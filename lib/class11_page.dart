import 'package:flutter/material.dart';
import 'class11_physics_page.dart';

class Class11Page extends StatelessWidget {
  const Class11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("11th Standard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SubjectCard(
              icon: Icons.science,
              title: "Physics",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhysicsSubjectPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            SubjectCard(
              icon: Icons.biotech,
              title: "Chemistry",
              onTap: () {},
            ),

            const SizedBox(height: 15),

            SubjectCard(
              icon: Icons.calculate,
              title: "Mathematics",
              onTap: () {},
            ),

            const SizedBox(height: 15),

            SubjectCard(
              icon: Icons.eco,
              title: "Biology",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const SubjectCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blue,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}