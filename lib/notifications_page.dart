import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  Widget notificationCard({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required String time,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(subtitle),
        ),
        trailing: Text(
          time,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      appBar: AppBar(title: const Text("Notifications"), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          notificationCard(
            icon: Icons.celebration,
            color: Colors.orange,
            title: "Welcome to TopperGuru",
            subtitle: "Start your learning journey today.",
            time: "Now",
          ),

          const SizedBox(height: 12),

          notificationCard(
            icon: Icons.emoji_events,
            color: Colors.blue,
            title: "Weekly Challenge",
            subtitle: "New challenges will be available soon.",
            time: "1 day ago",
          ),

          const SizedBox(height: 12),

          notificationCard(
            icon: Icons.menu_book,
            color: Colors.green,
            title: "New Study Material",
            subtitle: "Fresh notes will be uploaded every week.",
            time: "2 days ago",
          ),

          const SizedBox(height: 12),
          notificationCard(
            icon: Icons.local_fire_department,
            color: Colors.red,
            title: "Daily Motivation",
            subtitle: "Keep learning. Keep growing.",
            time: "3 days ago",
          ),

          const SizedBox(height: 12),

          notificationCard(
            icon: Icons.update,
            color: Colors.purple,
            title: "App Update",
            subtitle: "More exciting features are coming soon.",
            time: "1 week ago",
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
