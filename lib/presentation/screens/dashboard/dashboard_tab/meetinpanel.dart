import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:guestos/presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';
import 'package:guestos/core/widgets/glass_container.dart';

class MeetingsPanel extends StatelessWidget {
  final List<Meeting> meetings;
  final Function(String)? onJoin;
  final VoidCallback? onCreateMeeting;

  const MeetingsPanel({
    Key? key,
    required this.meetings,
    this.onJoin,
    this.onCreateMeeting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      padding: const EdgeInsets.all(20),
      borderRadius: BorderRadius.circular(20),
      blurIntensity: 15.0,
      opacity: 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Meetings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: onCreateMeeting,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF4FC3F7).withOpacity(0.3),
                            const Color(0xFF4FC3F7).withOpacity(0.15),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xFF4FC3F7).withOpacity(0.6)),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.add,
                              color: Color(0xFF4FC3F7), size: 14),
                          const SizedBox(width: 4),
                          const Text(
                            'Create Meeting',
                            style: TextStyle(
                              color: Color(0xFF4FC3F7),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Meeting Items
          ...meetings.map((meeting) => _buildMeetingItem(meeting)).toList(),
        ],
      ),
    );
  }

  Widget _buildMeetingItem(Meeting meeting) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.12),
                  Colors.white.withOpacity(0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Time and Avatar Row
                Row(
                  children: [
                    // Avatar Icons
                    Row(
                      children: [
                        _buildMeetingTypeIcon(meeting.type, Icons.headset_mic),
                        if (meeting.type == 'video') ...[
                          const SizedBox(width: 8),
                          _buildMeetingTypeIcon('audio', Icons.mic),
                        ],
                        if (meeting.type == 'team') ...[
                          const SizedBox(width: 8),
                          _buildMeetingTypeIcon('call', Icons.phone),
                        ],
                        const SizedBox(width: 8),
                        _buildMeetingTypeIcon('schedule', Icons.schedule),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: meeting.isCompleted
                            ? const Color(0xFF66BB6A).withOpacity(0.2)
                            : Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: meeting.isCompleted
                                ? const Color(0xFF66BB6A)
                                : Colors.white.withOpacity(0.7),
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            meeting.time,
                            style: TextStyle(
                              color: meeting.isCompleted
                                  ? const Color(0xFF66BB6A)
                                  : Colors.white.withOpacity(0.7),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Meeting Details
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: _getAvatarColor(meeting.type),
                      backgroundImage: meeting.avatarUrl != null
                          ? NetworkImage(meeting.avatarUrl!)
                          : null,
                      child: meeting.avatarUrl == null
                          ? Text(
                              meeting.title.substring(0, 1),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            meeting.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            meeting.subtitle,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Action Buttons
                Row(
                  children: [
                    // Lead/Time Badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.2)),
                      ),
                      child: Text(
                        meeting.status,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),

                    // Time Badge (for completed)
                    if (meeting.isCompleted)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2)),
                        ),
                        child: Text(
                          meeting.time,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    const Spacer(),

                    // Join/Action Buttons
                    _buildActionIcon(
                      Icons.phone,
                      onTap: () => onJoin?.call(meeting.id),
                    ),
                    const SizedBox(width: 8),
                    _buildActionIcon(Icons.content_copy),
                    const SizedBox(width: 8),

                    // Status Badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: meeting.isCompleted
                            ? const Color(0xFF66BB6A).withOpacity(0.2)
                            : Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: meeting.isCompleted
                              ? const Color(0xFF66BB6A)
                              : Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: Text(
                        meeting.isCompleted ? 'Created' : 'Join',
                        style: TextStyle(
                          color: meeting.isCompleted
                              ? const Color(0xFF66BB6A)
                              : Colors.white.withOpacity(0.9),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMeetingTypeIcon(String type, IconData icon) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: _getAvatarColor(type),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 16),
    );
  }

  Widget _buildActionIcon(IconData icon, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.08),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white.withOpacity(0.3)),
            ),
            child: Icon(icon, color: Colors.white.withOpacity(0.8), size: 16),
          ),
        ),
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
      case 'schedule':
        return const Color(0xFF42A5F5);
      default:
        return const Color(0xFF5C6BC0);
    }
  }
}
