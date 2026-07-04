import 'package:flutter/material.dart';

class ScoringPackagePage extends StatelessWidget {
  const ScoringPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scoring Package"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Scoring Package Content Coming Soon",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}