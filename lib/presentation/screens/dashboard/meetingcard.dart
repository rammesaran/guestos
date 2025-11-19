import 'package:flutter/material.dart';
import 'package:guestos/presentation/screens/dashboard/dashboarddata.dart';

class MeetingCard extends StatelessWidget {
  final MeetingData meeting;
  final Function(String)? onJoin;

  const MeetingCard({Key? key, required this.meeting, this.onJoin})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upcoming Meeting in ${meeting.timeRemaining}',
            style: TextStyle(
              color: Colors.white.withOpacity(0.95),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // Participant Avatar
              CircleAvatar(
                radius: 22,
                backgroundImage: meeting.participantImage != null
                    ? NetworkImage(meeting.participantImage!)
                    : null,
                backgroundColor: Colors.white.withOpacity(0.3),
                child: meeting.participantImage == null
                    ? const Icon(Icons.person, color: Colors.white, size: 24)
                    : null,
              ),
              const SizedBox(width: 12),

              // Meeting Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meeting.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      meeting.subtitle,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.85),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),

              // Join Button
              ElevatedButton.icon(
                onPressed: () => onJoin?.call(meeting.meetingId),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E4A5F),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                icon: const Icon(Icons.videocam, size: 18),
                label: const Text(
                  'Join',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
