import 'package:flutter/material.dart';
import 'class12_passing_package_page.dart';
import 'class12_scoring_package_page.dart';

class Class12ChemistryPage extends StatelessWidget {
  const Class12ChemistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Subject12Page(
      title: "12th Chemistry",
      icon: Icons.biotech,
      color: Colors.orange,
      passingPage: const Class12PassingPackagePage(),
      scoringPage: const Class12ScoringPackagePage(),
    );
  }
}

class Subject12Page extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Widget passingPage;
  final Widget scoringPage;

  const Subject12Page({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.passingPage,
    required this.scoringPage,
  });

  Widget buildCard({
    required BuildContext context,
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return Card(
      elevation: 8,
      shadowColor: color.withOpacity(0.25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
            size: 30,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => page,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Hero(
              tag: title,
              child: CircleAvatar(
                radius: 48,
                backgroundColor: color.withOpacity(0.15),
                child: Icon(
                  icon,
                  color: color,
                  size: 55,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Choose your study package",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 35),

            buildCard(
              context: context,
              icon: Icons.menu_book_rounded,
              color: Colors.green,
              title: "Passing Package",
              subtitle: "Essential PDFs to pass the exam",
              page: passingPage,
            ),

            const SizedBox(height: 18),

            buildCard(
              context: context,
              icon: Icons.workspace_premium_rounded,
              color: Colors.orange,
              title: "Scoring Package",
              subtitle: "Premium notes for high scores",
              page: scoringPage,
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "All 2nd PUC Chemistry study materials are FREE for this academic year.",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}