import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Widget infoTile(
      IconData icon,
      Color color,
      String title,
      String subtitle,
      ) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text("About TopperGuru"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const SizedBox(height: 15),

            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.school,
                size: 70,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "TopperGuru",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Learn Smart. Score Higher.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            infoTile(
              Icons.info,
              Colors.blue,
              "Version",
              "1.0.0",
            ),

            const SizedBox(height: 12),

            infoTile(
              Icons.code,
              Colors.green,
              "Developer",
              "Adithya D U",
            ),

            const SizedBox(height: 12),

            infoTile(
              Icons.school,
              Colors.orange,
              "Target Students",
              "2nd PUC, 1st PUC & SSLC Students",
            ),

            const SizedBox(height: 12),

            infoTile(
              Icons.menu_book,
              Colors.purple,
              "Features",
              "Notes, PDFs, Weekly Challenge, Downloads & More",
            ),

            const SizedBox(height: 12),

            infoTile(
              Icons.favorite,
              Colors.red,
              "Made With",
              "Flutter ❤️",
            ),

            const SizedBox(height: 12),

            infoTile(
              Icons.flag,
              Colors.teal,
              "Mission",
              "Providing quality study materials for Karnataka students absolutely FREE this year.",
            ),

            const SizedBox(height: 30),

            const Divider(),

            const SizedBox(height: 10),

            const Text(
              "© 2026 TopperGuru\nAll Rights Reserved",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}