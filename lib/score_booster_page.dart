import 'package:flutter/material.dart';

class ScoreBoosterPage extends StatelessWidget {
  const ScoreBoosterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Booster"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Score Booster Content Coming Soon",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}