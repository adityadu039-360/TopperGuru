import 'package:flutter/material.dart';
import 'sslc_page.dart';
import 'class11_page.dart';
import 'class12_page.dart';
import 'downloads_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildCard({
    required BuildContext context,
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
            size: 28,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TopperGuru"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Icon(
              Icons.school,
              size: 70,
              color: Colors.blue,
            ),

            const SizedBox(height: 10),

            const Text(
              "TopperGuru",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Learn Smart. Score Higher.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            buildCard(
              context: context,
              icon: Icons.menu_book,
              color: Colors.blue,
              title: "10th Standard",
              subtitle: "SSLC Study Materials",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SSLCPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.science,
              color: Colors.green,
              title: "11th Standard",
              subtitle: "PUC First Year",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class11Page(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.auto_stories,
              color: Colors.orange,
              title: "12th Standard",
              subtitle: "PUC Second Year",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class12Page(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.download,
              color: Colors.indigo,
              title: "Downloads",
              subtitle: "View your downloaded PDFs",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DownloadsPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.emoji_events,
              color: Colors.purple,
              title: "Topper Corner",
              subtitle: "Tips & Motivation",
              onTap: () {
                // Topper Corner page will be added later
              },
            ),
          ],
        ),
      ),
    );
  }
}