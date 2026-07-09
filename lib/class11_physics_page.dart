import 'package:flutter/material.dart';
import 'class11_passing_package_page.dart';
import 'class11_scoring_package_page.dart';

class Class11PhysicsPage extends StatelessWidget {
  const Class11PhysicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SubjectPage(
      title: "11th Physics",
      icon: Icons.science,
      color: Colors.blue,
      passingPage: const Class11PassingPackagePage(),
      scoringPage: const Class11ScoringPackagePage(),
    );
  }
}

class SubjectPage extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Widget passingPage;
  final Widget scoringPage;

  const SubjectPage({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.passingPage,
    required this.scoringPage,
  });

  Widget buildCard(BuildContext context, IconData icon, Color color,
      String title, String subtitle, Widget page) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        title: Text(title,
            style:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => page));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 70, color: color),
            const SizedBox(height: 10),
            Text(title,
                style: const TextStyle(
                    fontSize: 28, fontWeight: FontWeight.bold)),
            const Text("Choose a package"),
            const SizedBox(height: 30),
            buildCard(context, Icons.menu_book, Colors.green,
                "Passing Package", "Important PDFs", passingPage),
            const SizedBox(height: 15),
            buildCard(context, Icons.workspace_premium, Colors.orange,
                "Scoring Package", "High scoring notes", scoringPage),
          ],
        ),
      ),
    );
  }
}