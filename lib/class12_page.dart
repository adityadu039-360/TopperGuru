import 'package:flutter/material.dart';
import 'class12_physics_page.dart';
import 'class12_chemistry_page.dart';
import 'class12_mathematics_page.dart';
import 'class12_biology_page.dart';

class Class12Page extends StatelessWidget {
  const Class12Page({super.key});

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
        title: const Text("12th Standard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Icon(
              Icons.auto_stories,
              size: 65,
              color: Colors.orange,
            ),

            const SizedBox(height: 10),

            const Text(
              "12th Standard",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Choose Your Subject",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            buildCard(
              context: context,
              icon: Icons.science,
              color: Colors.blue,
              title: "Physics",
              subtitle: "12th Physics Study Materials",
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

            buildCard(
              context: context,
              icon: Icons.biotech,
              color: Colors.orange,
              title: "Chemistry",
              subtitle: "12th Chemistry Study Materials",
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

            buildCard(
              context: context,
              icon: Icons.calculate,
              color: Colors.purple,
              title: "Mathematics",
              subtitle: "12th Mathematics Study Materials",
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

            buildCard(
              context: context,
              icon: Icons.eco,
              color: Colors.green,
              title: "Biology",
              subtitle: "12th Biology Study Materials",
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