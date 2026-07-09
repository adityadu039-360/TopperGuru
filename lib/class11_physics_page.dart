import 'package:flutter/material.dart';
import 'class11_passing_package_page.dart';
import 'class11_scoring_package_page.dart';

class Class11PhysicsPage extends StatelessWidget {
  const Class11PhysicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("11th Physics"),
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
                      const Class11PassingPackagePage(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(Icons.workspace_premium,
                    color: Colors.orange),
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
                      const Class11ScoringPackagePage(),
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