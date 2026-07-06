import 'package:flutter/material.dart';

class Class11MathematicsPage extends StatelessWidget {
  const Class11MathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("11th Mathematics"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "11th Mathematics Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}