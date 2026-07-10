import 'package:flutter/material.dart';
import 'english_passing_package_page.dart';
import 'english_scoring_package_page.dart';
import 'english_score_booster_page.dart';

class EnglishMediumPage extends StatelessWidget {
  const EnglishMediumPage({super.key});

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
        title: const Text("English Medium"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Icon(
              Icons.language,
              size: 65,
              color: Colors.blue,
            ),

            const SizedBox(height: 10),

            const Text(
              "English Medium",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Study materials in English",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            buildCard(
              context: context,
              icon: Icons.menu_book,
              color: Colors.green,
              title: "Passing Package",
              subtitle: "Essential PDFs for passing",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const EnglishPassingPackagePage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.workspace_premium,
              color: Colors.orange,
              title: "Scoring Package",
              subtitle: "Score high with premium notes",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const EnglishScoringPackagePage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            buildCard(
              context: context,
              icon: Icons.trending_up,
              color: Colors.blue,
              title: "Score Booster",
              subtitle: "Boost your exam performance",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const EnglishScoreBoosterPage(),
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