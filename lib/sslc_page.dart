import 'package:flutter/material.dart';
import 'kannada_medium_page.dart';
import 'english_medium_page.dart';

class SSLCPage extends StatelessWidget {
  const SSLCPage({super.key});

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
        title: const Text("SSLC"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Icon(
              Icons.menu_book,
              size: 65,
              color: Colors.blue,
            ),

            const SizedBox(height: 10),

            const Text(
              "Choose Your Medium",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Select your preferred study medium",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            buildCard(
              context: context,
              icon: Icons.translate,
              color: Colors.green,
              title: "Kannada Medium",
              subtitle: "Study materials in Kannada",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KannadaMediumPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.language,
              color: Colors.blue,
              title: "English Medium",
              subtitle: "Study materials in English",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EnglishMediumPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}