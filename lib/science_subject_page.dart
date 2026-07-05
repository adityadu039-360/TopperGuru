import 'package:flutter/material.dart';

class ScienceSubjectPage extends StatelessWidget {
  const ScienceSubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Science"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Science Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}