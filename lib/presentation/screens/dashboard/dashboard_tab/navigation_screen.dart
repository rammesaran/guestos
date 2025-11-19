import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  final String currentRoute;
  final Function(String)? onNavigate;
  final VoidCallback? onCreate;
  final VoidCallback? onSettings;
  final VoidCallback? onNotifications;
  final VoidCallback? onProfile;
  final String userInitials;

  const TopNavigationBar({
    Key? key,
    required this.currentRoute,
    this.onNavigate,
    this.onCreate,
    this.onSettings,
    this.onNotifications,
    this.onProfile,
    this.userInitials = 'GT',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.1)),
        ),
      ),
      child: Row(
        children: [
          // Logo
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'GUEST - OS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(width: 32),

          // Navigation Items
          _buildNavItem('Home', Icons.home, 'Home'),
          _buildNavItem('Dashboard', Icons.dashboard, 'Dashboard'),
          _buildNavItem(
            'Vision',
            Icons.visibility,
            'Vision',
            hasDropdown: true,
          ),
          _buildNavItem('People', Icons.people, 'People', hasDropdown: true),
          _buildNavItem('Data', Icons.data_usage, 'Data', hasDropdown: true),
          _buildNavItem(
            'Process',
            Icons.settings_suggest,
            'Process',
            hasDropdown: true,
          ),
          _buildNavItem(
            'Profit',
            Icons.trending_up,
            'Profit',
            hasDropdown: true,
          ),
          _buildNavItem(
            'Execution',
            Icons.check_circle,
            'Execution',
            hasDropdown: true,
          ),

          const Spacer(),

          // Right Side Actions
          _buildActionButton(
            Icons.add_circle_outline,
            'Create',
            onCreate,
            isCreate: true,
          ),
          const SizedBox(width: 12),
          _buildIconButton(Icons.settings, onSettings),
          const SizedBox(width: 12),
          _buildIconButton(Icons.notifications_outlined, onNotifications),
          const SizedBox(width: 12),
          _buildProfileButton(),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    String label,
    IconData icon,
    String route, {
    bool hasDropdown = false,
  }) {
    final isActive = currentRoute == route;

    return GestureDetector(
      onTap: () => onNavigate?.call(route),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: isActive ? Colors.white.withOpacity(0.15) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 18),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
            if (hasDropdown) ...[
              const SizedBox(width: 4),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white.withOpacity(0.7),
                size: 16,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
    IconData icon,
    String label,
    VoidCallback? onTap, {
    bool isCreate = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isCreate
              ? Colors.white.withOpacity(0.15)
              : Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 18),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white.withOpacity(0.1)),
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  Widget _buildProfileButton() {
    return GestureDetector(
      onTap: onProfile,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFF4FC3F7),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            userInitials,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
