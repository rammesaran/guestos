import 'package:flutter/material.dart';
import '../../presentation/screens/dashboard/mobile_dashboard_screen.dart';
import '../../presentation/screens/dashboard/dashboard_tab/tab_dashboard_screen.dart';
import '../../presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';

class NavigationHelper {
  /// Determines if the device is a tablet based on screen width
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  /// Navigates to appropriate dashboard based on device type
  static Future<void> navigateToDashboard(
    BuildContext context, {
    bool replace = true,
  }) async {
    final bool isTabletDevice = isTablet(context);

    Widget dashboardScreen;

    if (isTabletDevice) {
      // Navigate to tablet dashboard
      dashboardScreen = _createTabletDashboard();
    } else {
      // Navigate to mobile dashboard
      dashboardScreen = const MobileDashboardScreen();
    }

    if (replace) {
      // Replace current route (for login -> dashboard)
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => dashboardScreen),
      );
    } else {
      // Push new route
      await Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => dashboardScreen));
    }
  }

  /// Creates tablet dashboard with sample data
  static Widget _createTabletDashboard() {
    final overviewData = _generateSampleOverviewData();
    final dashboardData = DashboardTabletData(
      userInitials: 'GU',
      rocksCount: 360,
      rocksChange: 9.70,
      todosCount: 280,
      todosChange: 8.45,
      firesCount: 200,
      firesChange: -7.45,
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
          subtitle: 'Project planning',
          time: '3:30 pm',
          type: 'team',
        ),
      ],
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
          title: 'Weekly Team Meeting',
          subtitle: 'Leadership meeting',
          time: '1:23 pm',
          status: 'Lead',
          type: 'team',
          isCompleted: false,
        ),
        Meeting(
          id: '3',
          title: 'Vision Session',
          subtitle: 'Project planning',
          time: '3:30 pm',
          status: 'Lead',
          type: 'call',
          isCompleted: false,
        ),
      ],
      overviewData: overviewData,
      firesYetToStart: 6,
      firesInProgress: 45,
      firesCompleted: 78,
      todosList: [
        TodoItemData(
          id: '1',
          date: 'Today',
          title: 'Review project specifications',
          isCompleted: false,
        ),
        TodoItemData(
          id: '2',
          date: 'Tomorrow',
          title: 'Update dashboard components',
          isCompleted: false,
        ),
        TodoItemData(
          id: '3',
          date: 'This Week',
          title: 'Complete user authentication',
          isCompleted: true,
        ),
      ],
    );

    return TabletDashboardScreen(
      data: dashboardData,
      onNavigate: (route) {
        print('Navigate to: $route');
      },
      onCreate: () => print('Create clicked'),
      onSettings: () => print('Settings clicked'),
      onNotifications: () => print('Notifications clicked'),
      onProfile: () => print('Profile clicked'),
      onMeetingJoin: (meetingId) => print('Join meeting: $meetingId'),
      onCreateMeeting: () => print('Create meeting'),
      onAddFires: () => print('Add fires'),
      onAddTodos: () => print('Add todos'),
    );
  }

  /// Generates sample overview data for tablet dashboard
  static List<OverviewDataPoint> _generateSampleOverviewData() {
    final months = [
      '1/Jan',
      '15/Jan',
      '1/Feb',
      '15/Feb',
      '1/Mar',
      '15/Mar',
      '1/Apr',
      '15/Apr',
      '1/May',
      '15/May',
      '1/Jun',
      '15/Jun',
    ];

    return months.map((month) {
      final index = months.indexOf(month);
      final baseValue = 40 + (index % 8) * 12;
      return OverviewDataPoint(
        label: month,
        taskAssigned: baseValue + 25 + (index % 4) * 8,
        overdue: baseValue - 15 - (index % 3) * 4,
        completed: baseValue + 35 + (index % 5) * 7,
      );
    }).toList();
  }

  /// Shows device type information (for debugging)
  static void showDeviceType(BuildContext context) {
    final deviceType = isTablet(context) ? 'Tablet' : 'Mobile';
    final screenSize = MediaQuery.of(context).size;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Device: $deviceType (${screenSize.width.toInt()}x${screenSize.height.toInt()})',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
