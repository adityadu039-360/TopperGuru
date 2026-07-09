import 'package:flutter/material.dart';
import 'class12_passing_package_page.dart';
import 'class12_scoring_package_page.dart';

class Class12MathematicsPage extends StatelessWidget {
  const Class12MathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Mathematics"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.menu_book, color: Colors.green),
                title: const Text(
                  "Passing Package",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const Class12PassingPackagePage(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.workspace_premium,
                  color: Colors.orange,
                ),
                title: const Text(
                  "Scoring Package",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const Class12ScoringPackagePage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}