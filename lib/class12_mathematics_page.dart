import 'package:flutter/material.dart';

class Class12MathematicsPage extends StatelessWidget {
  const Class12MathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Mathematics"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "12th Mathematics Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}