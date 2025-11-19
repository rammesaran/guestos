import 'package:flutter/material.dart';
import 'package:guestos/presentation/screens/dashboard/bottomnavigation.dart';
import 'package:guestos/presentation/screens/dashboard/dashboarddata.dart';
import 'package:guestos/presentation/screens/dashboard/matriccard.dart';
import 'package:guestos/presentation/screens/dashboard/meetingcard.dart';
import 'package:guestos/presentation/screens/dashboard/overview.dart';
import 'package:guestos/presentation/screens/dashboard/todochart.dart';

/// Main Dashboard Home Screen
/// Reusable component that displays user's dashboard with meetings, overview, and metrics
class DashboardHomeScreen extends StatefulWidget {
  final DashboardData data;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onProfileTap;
  final Function(String)? onMeetingJoin;
  final VoidCallback? onReportTap;
  final VoidCallback? onViewAllTodos;
  final Function(String)? onTodoTap;
  final VoidCallback? onViewTodoDetails;

  const DashboardHomeScreen({
    Key? key,
    required this.data,
    this.onNotificationTap,
    this.onProfileTap,
    this.onMeetingJoin,
    this.onReportTap,
    this.onViewAllTodos,
    this.onTodoTap,
    this.onViewTodoDetails,
  }) : super(key: key);

  @override
  State<DashboardHomeScreen> createState() => _DashboardHomeScreenState();
}

class _DashboardHomeScreenState extends State<DashboardHomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E7D9F),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            _buildHeader(),

            // Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),

                    // Greeting
                    _buildGreeting(),
                    const SizedBox(height: 24),

                    // Upcoming Meeting Card
                    if (widget.data.upcomingMeeting != null)
                      MeetingCard(
                        meeting: widget.data.upcomingMeeting!,
                        onJoin: widget.onMeetingJoin,
                      ),
                    const SizedBox(height: 16),

                    // Overview Card
                    OverviewCard(
                      rocks: widget.data.rocksProgress,
                      fires: widget.data.firesProgress,
                      todos: widget.data.todosProgress,
                      onReportTap: widget.onReportTap,
                    ),
                    const SizedBox(height: 16),

                    // To-Do Chart Card
                    TodoChartCard(
                      completed: widget.data.todoCompleted,
                      inProgress: widget.data.todoInProgress,
                      yetToStart: widget.data.todoYetToStart,
                      pendingTodos: widget.data.pendingTodos,
                      onViewAll: widget.onViewAllTodos,
                      onTodoTap: widget.onTodoTap,
                      onViewDetails: widget.onViewTodoDetails,
                    ),
                    const SizedBox(height: 16),

                    // Fire Metric Card
                    MetricCard(
                      title: 'Fire',
                      description:
                          'Identify and organize pressing issues to resolve them with ease.',
                      percentage: widget.data.firePercentage,
                      color: const Color(0xFF4FC3F7),
                    ),
                    const SizedBox(height: 16),

                    // Rocks Metric Card
                    MetricCard(
                      title: 'Rocks',
                      description:
                          'Set and track quarterly goals to help your team consistently hit their targets.',
                      percentage: widget.data.rocksPercentage,
                      color: const Color(0xFFFFA726),
                    ),
                    const SizedBox(height: 100), // Space for bottom nav
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Guest OS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              // Notification Icon
              IconButton(
                onPressed: widget.onNotificationTap,
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              const SizedBox(width: 8),

              // Profile Avatar
              GestureDetector(
                onTap: widget.onProfileTap,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: widget.data.userProfileImage != null
                      ? NetworkImage(widget.data.userProfileImage!)
                      : null,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: widget.data.userProfileImage == null
                      ? const Icon(Icons.person, color: Colors.white)
                      : null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGreeting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello ${widget.data.userName}!',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          widget.data.subtitle,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
