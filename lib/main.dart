import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/injection/injection.dart';
import 'core/constants/app_colors.dart';
import 'presentation/screens/dashboard/mobile_dashboard_screen.dart';
import 'presentation/screens/dashboard/dashboard_tab/tab_dashboard_screen.dart';
import 'presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone 11 Pro design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Guest OS Dashboard',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
            fontFamily: 'System',
            scaffoldBackgroundColor: AppColors.primaryDark,
          ),
          home: const DashboardSelector(),
        );
      },
    );
  }
}

class DashboardSelector extends StatelessWidget {
  const DashboardSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: AppColors.primaryGradient,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Guest OS Dashboard',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 40.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MobileDashboardScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlue,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 16.h),
                  ),
                  child: Text(
                    'Mobile Dashboard',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TabletDashboardExample(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlue,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 16.h),
                  ),
                  child: Text(
                    'Tablet Dashboard',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabletDashboardExample extends StatelessWidget {
  const TabletDashboardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate sample overview data
    final overviewData = _generateOverviewData();

    // Sample dashboard data
    final dashboardData = DashboardTabletData(
      userInitials: 'GT',

      // Metrics
      rocksCount: 360,
      rocksChange: 9.70,
      todosCount: 280,
      todosChange: 8.45,
      firesCount: 200,
      firesChange: -7.45,

      // Upcoming meetings for summary card
      upcomingMeetings: [
        Meeting(
          id: '1',
          title: 'Weekly 1-on-1',
          subtitle: 'Team strategy',
          time: 'Tue 02:09',
          type: 'video',
        ),
        Meeting(
          id: '2',
          title: 'Weekly Team',
          subtitle: 'Leadership meeting',
          time: '1:23 pm',
          type: 'audio',
        ),
        Meeting(
          id: '3',
          title: 'Vision Session',
          subtitle: 'First Customer Call',
          time: '1:23 pm',
          type: 'team',
        ),
      ],

      // Full meetings list for panel
      meetingsList: [
        Meeting(
          id: '1',
          title: 'Weekly 1-on-1',
          subtitle: 'Team strategy',
          time: 'Tue 02:09',
          status: 'Lead',
          type: 'video',
          isCompleted: false,
        ),
        Meeting(
          id: '2',
          title: 'Weekly Team...',
          subtitle: 'Leadership meeting',
          time: '1:23 pm',
          status: 'Lead',
          type: 'team',
          isCompleted: false,
        ),
        Meeting(
          id: '3',
          title: 'Vision Session',
          subtitle: 'First Customer Call',
          time: '1:23 pm',
          status: 'Lead',
          type: 'call',
          isCompleted: false,
        ),
        Meeting(
          id: '4',
          title: 'Foundation Day',
          subtitle: 'Leadership meeting',
          time: '1:23 pm',
          status: 'Lead',
          type: 'video',
          isCompleted: false,
        ),
        Meeting(
          id: '5',
          title: 'Weekly 1-on-1',
          subtitle: 'Leadership meeting',
          time: '11:18 am',
          status: '11:18 am',
          type: 'team',
          isCompleted: true,
        ),
        Meeting(
          id: '6',
          title: 'Weekly Team...',
          subtitle: 'Quarterly review',
          time: '11:06 am',
          status: '11:06 am',
          type: 'audio',
          isCompleted: true,
        ),
      ],

      // Overview chart data
      overviewData: overviewData,

      // Fires data
      firesYetToStart: 6,
      firesInProgress: 45,
      firesCompleted: 78,

      // Todos list
      todosList: [
        TodoItemData(
          id: '1',
          date: 'Aug 16, 2025',
          title: 'Set Up Conference Room B for 10 AM Meeting',
          isCompleted: true,
        ),
        TodoItemData(
          id: '2',
          date: 'Aug 20, 2025',
          title: 'Restock Housekeeping Supplies on 3rd Floor',
          isCompleted: false,
        ),
        TodoItemData(
          id: '3',
          date: 'Sep 04, 2025',
          title: 'Inspect and Clean the Pool Area',
          isCompleted: false,
        ),
        TodoItemData(
          id: '4',
          date: 'Sep 06, 2025',
          title: 'Check-In Assistance During Peak Hours (4PM - 6PM)',
          isCompleted: false,
        ),
      ],
    );

    return TabletDashboardScreen(
      data: dashboardData,

      // Navigation callback
      onNavigate: (route) {
        print('Navigate to: $route');
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Navigate to $route')));
      },

      // Top bar actions
      onCreate: () {
        print('Create clicked');
        _showCreateDialog(context);
      },

      onSettings: () {
        print('Settings clicked');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SettingsScreen()),
        );
      },

      onNotifications: () {
        print('Notifications clicked');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const NotificationsScreen()),
        );
      },

      onProfile: () {
        print('Profile clicked');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ProfileScreen()),
        );
      },

      // Meeting actions
      onMeetingJoin: (meetingId) {
        print('Join meeting: $meetingId');
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Joining meeting: $meetingId')));
      },

      onCreateMeeting: () {
        print('Create meeting');
        _showCreateMeetingDialog(context);
      },

      // Add actions
      onAddFires: () {
        print('Add fires');
        _showAddDialog(context, 'Fire');
      },

      onAddTodos: () {
        print('Add todos');
        _showAddDialog(context, 'To-Do');
      },
    );
  }

  List<OverviewDataPoint> _generateOverviewData() {
    final months = [
      '1/ Jan',
      '21/ Jan',
      '3/ Jan',
      '4/ Jan',
      '5/ Feb',
      '6/ Feb',
      '7/ Feb',
      '8/ Feb',
      '9/ Mar',
      '10/ Mar',
      '11/ Mar',
      '12/ Mar',
      '13/ Apr',
      '14/ Apr',
      '15/ Apr',
      '16/ Apr',
      '17/ May',
      '18/ May',
      '19/ May',
      '20/ May',
      '21/ Jun',
      '22/ Jun',
      '23/ Jun',
      '24/ Jun',
      '25/ Jul',
      '26/ Jul',
      '27/ Jul',
      '28/ Jul',
      '29/ Aug',
      '30/ Aug',
      '31/ Aug',
    ];

    return months.map((month) {
      // Generate varying data for demonstration
      final baseValue = 50 + (months.indexOf(month) % 10) * 15;
      return OverviewDataPoint(
        label: month,
        taskAssigned: baseValue + 30 + (months.indexOf(month) % 5) * 10,
        overdue: baseValue - 20 - (months.indexOf(month) % 4) * 5,
        completed: baseValue + 50 + (months.indexOf(month) % 6) * 8,
      );
    }).toList();
  }

  void _showCreateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create'),
        content: const Text('What would you like to create?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _showCreateMeetingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Meeting'),
        content: const Text('Set up a new meeting'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _showAddDialog(BuildContext context, String type) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add $type'),
        content: Text('Create a new $type item'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

// Sample screens
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xFF0D3B52),
        foregroundColor: Colors.white,
      ),
      body: const Center(child: Text('Settings Screen')),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: const Color(0xFF0D3B52),
        foregroundColor: Colors.white,
      ),
      body: const Center(child: Text('Notifications Screen')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF0D3B52),
        foregroundColor: Colors.white,
      ),
      body: const Center(child: Text('Profile Screen')),
    );
  }
}
