import 'package:flutter/material.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/meetinpanel.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/navigation_screen.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/overview.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/piechart.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/summary_card.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/todo.dart';

/// Tablet Dashboard Screen - Main Component
/// Optimized for tablet/desktop layouts with side-by-side panels
class TabletDashboardScreen extends StatefulWidget {
  final DashboardTabletData data;
  final Function(String)? onNavigate;
  final VoidCallback? onCreate;
  final VoidCallback? onSettings;
  final VoidCallback? onNotifications;
  final VoidCallback? onProfile;
  final Function(String)? onMeetingJoin;
  final VoidCallback? onCreateMeeting;
  final VoidCallback? onAddFires;
  final VoidCallback? onAddTodos;

  const TabletDashboardScreen({
    Key? key,
    required this.data,
    this.onNavigate,
    this.onCreate,
    this.onSettings,
    this.onNotifications,
    this.onProfile,
    this.onMeetingJoin,
    this.onCreateMeeting,
    this.onAddFires,
    this.onAddTodos,
  }) : super(key: key);

  @override
  State<TabletDashboardScreen> createState() => _TabletDashboardScreenState();
}

class _TabletDashboardScreenState extends State<TabletDashboardScreen> {
  String _selectedTeam = 'Leadership';
  String _selectedRocksView = 'Rocks';
  String _selectedRocksPeriod = 'Quarterly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D3B52),
      body: Column(
        children: [
          // Top Navigation Bar
          TopNavigationBar(
            currentRoute: 'Dashboard',
            onNavigate: widget.onNavigate,
            onCreate: widget.onCreate,
            onSettings: widget.onSettings,
            onNotifications: widget.onNotifications,
            onProfile: widget.onProfile,
            userInitials: widget.data.userInitials,
          ),

          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  _buildHeader(),
                  const SizedBox(height: 24),

                  // Top Metrics Row
                  Row(
                    children: [
                      Expanded(
                        child: MetricSummaryCard(
                          title: 'Rocks',
                          value: widget.data.rocksCount.toString(),
                          change: widget.data.rocksChange,
                          changeLabel: 'From last quarter',
                          icon: Icons.flag_outlined,
                          color: const Color(0xFF4FC3F7),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MetricSummaryCard(
                          title: 'To-Dos',
                          value: widget.data.todosCount.toString(),
                          change: widget.data.todosChange,
                          changeLabel: 'From last quarter',
                          icon: Icons.check_circle_outline,
                          color: const Color(0xFF66BB6A),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MetricSummaryCard(
                          title: 'Fires',
                          value: widget.data.firesCount.toString(),
                          change: widget.data.firesChange,
                          changeLabel: 'From last quarter',
                          icon: Icons.local_fire_department_outlined,
                          color: const Color(0xFFFF5252),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MeetingsSummaryCard(
                          meetings: widget.data.upcomingMeetings,
                          onCreateMeeting: widget.onCreateMeeting,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Main Content Grid
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left Column - Charts
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            // Overview Chart
                            OverviewChart(
                              data: widget.data.overviewData,
                              selectedView: _selectedRocksView,
                              selectedPeriod: _selectedRocksPeriod,
                              onViewChanged: (value) {
                                setState(() => _selectedRocksView = value);
                              },
                              onPeriodChanged: (value) {
                                setState(() => _selectedRocksPeriod = value);
                              },
                            ),
                            const SizedBox(height: 24),

                            // Bottom Row - Fires and Todos
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: FiresPieChart(
                                    yetToStart: widget.data.firesYetToStart,
                                    inProgress: widget.data.firesInProgress,
                                    completed: widget.data.firesCompleted,
                                    onAddFires: widget.onAddFires,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: TodosList(
                                    todos: widget.data.todosList,
                                    onAddTodos: widget.onAddTodos,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 24),

                      // Right Column - Meetings Panel
                      SizedBox(
                        width: 320,
                        child: MeetingsPanel(
                          meetings: widget.data.meetingsList,
                          onJoin: widget.onMeetingJoin,
                          onCreateMeeting: widget.onCreateMeeting,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'A personalized workspace to view tasks, data, goals and more.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
          ],
        ),
        // Team Selector
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: DropdownButton<String>(
            value: _selectedTeam,
            dropdownColor: const Color(0xFF1A4F66),
            underline: const SizedBox(),
            icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            items: ['Leadership', 'Marketing', 'Sales', 'Engineering']
                .map(
                  (team) => DropdownMenuItem(
                    value: team,
                    child: Text('Team : $team'),
                  ),
                )
                .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _selectedTeam = value);
              }
            },
          ),
        ),
      ],
    );
  }
}

/// Meetings Summary Card Widget (for top metrics row)
class MeetingsSummaryCard extends StatelessWidget {
  final List<Meeting> meetings;
  final VoidCallback? onCreateMeeting;

  const MeetingsSummaryCard({
    Key? key,
    required this.meetings,
    this.onCreateMeeting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingCount = meetings.where((m) => !m.isCompleted).length;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Meetings',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: onCreateMeeting,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4FC3F7).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xFF4FC3F7)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.add, color: Color(0xFF4FC3F7), size: 14),
                      const SizedBox(width: 4),
                      Text(
                        'Create Meeting',
                        style: TextStyle(
                          color: const Color(0xFF4FC3F7),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            upcomingCount.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              ...meetings.take(5).map((meeting) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: _getAvatarColor(meeting.type),
                    child: Icon(
                      _getMeetingIcon(meeting.type),
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }

  Color _getAvatarColor(String type) {
    switch (type.toLowerCase()) {
      case 'video':
        return const Color(0xFF9C27B0);
      case 'audio':
        return const Color(0xFF4CAF50);
      case 'team':
        return const Color(0xFFFFA726);
      case 'call':
        return const Color(0xFFFFB300);
      default:
        return const Color(0xFF42A5F5);
    }
  }

  IconData _getMeetingIcon(String type) {
    switch (type.toLowerCase()) {
      case 'video':
        return Icons.videocam;
      case 'audio':
        return Icons.mic;
      case 'team':
        return Icons.groups;
      case 'call':
        return Icons.phone;
      default:
        return Icons.event;
    }
  }
}
