import 'package:flutter/material.dart';

class Class12ScoringPackagePage extends StatelessWidget {
  const Class12ScoringPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Scoring Package"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "12th Scoring Package PDFs Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}