import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/glass_container.dart';
import '../../../core/injection/injection.dart';
import '../../blocs/dashboard/dashboard_bloc.dart';
import '../../blocs/dashboard/dashboard_event.dart';
import '../../blocs/dashboard/dashboard_state.dart';
import '../../../domain/entities/dashboard_entity.dart';
import 'widgets/mobile_metric_card.dart';
import 'widgets/mobile_meeting_card.dart';
import 'widgets/mobile_overview_card.dart';
import 'widgets/mobile_todo_card.dart';
import 'widgets/mobile_pie_chart.dart';
import 'bottomnavigation.dart';

class MobileDashboardScreen extends StatelessWidget {
  const MobileDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<DashboardBloc>()..add(const DashboardEvent.loadDashboard()),
      child: const _MobileDashboardView(),
    );
  }
}

class _MobileDashboardView extends StatefulWidget {
  const _MobileDashboardView({Key? key}) : super(key: key);

  @override
  State<_MobileDashboardView> createState() => _MobileDashboardViewState();
}

class _MobileDashboardViewState extends State<_MobileDashboardView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: AppColors.primaryGradient,
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return RefreshIndicator(
                color: AppColors.textPrimary,
                backgroundColor: AppColors.surfacePrimary,
                onRefresh: () async {
                  context.read<DashboardBloc>().add(
                    const DashboardEvent.refreshDashboard(),
                  );
                },
                child: state.when(
                  initial: () => const _LoadingView(),
                  loading: () => const _LoadingView(),
                  loaded: (dashboard, isRefreshing) => _LoadedView(
                    dashboard: dashboard,
                    isRefreshing: isRefreshing,
                  ),
                  error: (failure, lastDashboard) =>
                      _ErrorView(error: "", lastDashboard: lastDashboard),
                ),
              );
            },
          ),
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
}

class _LoadingView extends StatelessWidget {
  const _LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: AppColors.textPrimary),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String error;
  final DashboardEntity? lastDashboard;

  const _ErrorView({Key? key, required this.error, this.lastDashboard})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: GlassCard(
              child: Column(
                children: [
                  Icon(Icons.error_outline, size: 48.w, color: AppColors.error),
                  SizedBox(height: 16.h),
                  Text(
                    'Something went wrong',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    error,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.h),
                  GlassButton(
                    onPressed: () {
                      context.read<DashboardBloc>().add(
                        const DashboardEvent.loadDashboard(),
                      );
                    },
                    child: Text(
                      'Try Again',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Show last data if available
        if (lastDashboard != null)
          SliverToBoxAdapter(
            child: _LoadedView(dashboard: lastDashboard!, isRefreshing: false),
          ),
      ],
    );
  }
}

class _LoadedView extends StatelessWidget {
  final DashboardEntity dashboard;
  final bool isRefreshing;

  const _LoadedView({
    Key? key,
    required this.dashboard,
    required this.isRefreshing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Header
        SliverToBoxAdapter(
          child: Padding(padding: EdgeInsets.all(16.w), child: _buildHeader()),
        ),

        // Upcoming Meeting
        if (dashboard.upcomingMeetings.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: _buildUpcomingMeeting(),
            ),
          ),

        SliverToBoxAdapter(child: SizedBox(height: 16.h)),

        // Metrics Overview
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: _buildOverview(),
          ),
        ),

        SliverToBoxAdapter(child: SizedBox(height: 16.h)),

        // Metrics Cards
        SliverToBoxAdapter(child: _buildMetricsGrid()),

        SliverToBoxAdapter(child: SizedBox(height: 16.h)),

        // Todo Section
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: _buildTodoSection(),
          ),
        ),

        SliverToBoxAdapter(child: SizedBox(height: 16.h)),

        // Fire & Rocks Section
        SliverToBoxAdapter(child: _buildFireRocksSection()),

        SliverToBoxAdapter(child: SizedBox(height: 100.h)),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Guest OS',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Hello ${dashboard.userName}!',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'This is your current To-Dos, Rock & Fires',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            GlassContainer(
              padding: EdgeInsets.all(2.w),
              borderRadius: BorderRadius.circular(50),
              child: CircleAvatar(
                radius: 24.w,
                backgroundColor: AppColors.primaryBlue,
                child: Text(
                  dashboard.userInitials,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildUpcomingMeeting() {
    final meeting = dashboard.upcomingMeetings.first;
    return MobileMeetingCard(meeting: meeting);
  }

  Widget _buildOverview() {
    return MobileOverviewCard(overview: dashboard.overview);
  }

  Widget _buildMetricsGrid() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: MobileMetricCard(
              title: 'Rocks',
              count: dashboard.metrics.rocksCount,
              change: dashboard.metrics.rocksChange,
              color: AppColors.chartYellow,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: MobileMetricCard(
              title: 'To-Dos',
              count: dashboard.metrics.todosCount,
              change: dashboard.metrics.todosChange,
              color: AppColors.chartBlue,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: MobileMetricCard(
              title: 'Fires',
              count: dashboard.metrics.firesCount,
              change: dashboard.metrics.firesChange,
              color: AppColors.chartOrange,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTodoSection() {
    return GlassContainer(
      borderRadius: BorderRadius.circular(24.r),
      padding: EdgeInsets.all(20.w),
      blurIntensity: 15.0,
      gradientColors: [
        Colors.white.withOpacity(0.3),
        Colors.white.withOpacity(0.15),
        Colors.white.withOpacity(0.05),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'To-Do',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to all todos
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 6.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: AppColors.glassBorder, width: 1),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Text(
                    'View All To-Do',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),

          // Chart Section
          MobilePieChart(data: _getTodoChartData()),

          SizedBox(height: 20.h),

          // Todo List with enhanced cards
          ...dashboard.todos
              .take(3)
              .map(
                (todo) => Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: MobileTodoCard(todo: todo),
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget _buildFireRocksSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          // Fire Section
          _buildFireCard(),
          SizedBox(height: 16.h),
          // Rocks Section
          _buildRocksCard(),
        ],
      ),
    );
  }

  Widget _buildFireCard() {
    return GlassCard(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fire',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Container(
                width: 8.w,
                height: 8.w,
                decoration: BoxDecoration(
                  color: AppColors.chartOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            'Pressing issues to resolve',
            style: TextStyle(fontSize: 10.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '47.5%',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Completion',
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 40.w,
                height: 40.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: 0.475,
                      strokeWidth: 4.w,
                      backgroundColor: AppColors.surfaceSecondary,
                      color: AppColors.chartOrange,
                    ),
                    Text(
                      '48%',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRocksCard() {
    return GlassCard(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rocks',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Container(
                width: 8.w,
                height: 8.w,
                decoration: BoxDecoration(
                  color: AppColors.chartYellow,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            'Quarterly goals tracking',
            style: TextStyle(fontSize: 10.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '75.2%',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Completion',
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 40.w,
                height: 40.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: 0.752,
                      strokeWidth: 4.w,
                      backgroundColor: AppColors.surfaceSecondary,
                      color: AppColors.chartYellow,
                    ),
                    Text(
                      '75%',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartData> _getTodoChartData() {
    final completedCount = dashboard.todos.where((t) => t.isCompleted).length;
    final totalCount = dashboard.todos.length;
    final pendingCount = totalCount - completedCount;

    return [
      PieChartData(
        label: 'Completed',
        value: completedCount.toDouble(),
        color: AppColors.chartGreen,
      ),
      PieChartData(
        label: 'In Progress',
        value: (pendingCount * 0.6).roundToDouble(),
        color: AppColors.chartYellow,
      ),
      PieChartData(
        label: 'Yet to Start',
        value: (pendingCount * 0.4).roundToDouble(),
        color: AppColors.chartBlue,
      ),
    ];
  }
}

class PieChartData {
  final String label;
  final double value;
  final Color color;

  PieChartData({required this.label, required this.value, required this.color});
}
