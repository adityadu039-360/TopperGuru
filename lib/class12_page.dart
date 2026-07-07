import 'package:flutter/material.dart';
import 'class12_physics_page.dart';
import 'class12_chemistry_page.dart';
import 'class12_mathematics_page.dart';
import 'class12_biology_page.dart';

class Class12Page extends StatelessWidget {
  const Class12Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          "12th Standard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Select Your Subject",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            SubjectCard(
              icon: Icons.science,
              title: "Physics",
              color: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class12PhysicsPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            SubjectCard(
              icon: Icons.biotech,
              title: "Chemistry",
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class12ChemistryPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            SubjectCard(
              icon: Icons.calculate,
              title: "Mathematics",
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class12MathematicsPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            SubjectCard(
              icon: Icons.eco,
              title: "Biology",
              color: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class12BiologyPage(),
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

class SubjectCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const SubjectCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: color.withOpacity(0.15),
                child: Icon(
                  icon,
                  color: color,
                  size: 28,
                ),
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}