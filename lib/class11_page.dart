import 'package:flutter/material.dart';

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
            ),
            SizedBox(height: 15),
            SubjectCard(
              icon: Icons.biotech,
              title: "Chemistry",
            ),
            SizedBox(height: 15),
            SubjectCard(
              icon: Icons.calculate,
              title: "Mathematics",
            ),
            SizedBox(height: 15),
            SubjectCard(
              icon: Icons.eco,
              title: "Biology",
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

  const SubjectCard({
    super.key,
    required this.icon,
    required this.title,
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
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}