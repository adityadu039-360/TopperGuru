import 'package:flutter/material.dart';

class MathematicsSubjectPage extends StatelessWidget {
  const MathematicsSubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mathematics"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Mathematics Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}