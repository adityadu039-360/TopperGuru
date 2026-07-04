import 'package:flutter/material.dart';
import 'passing_package_page.dart';
import 'scoring_package_page.dart';
import 'score_booster_page.dart';

class KannadaMediumPage extends StatelessWidget {
  const KannadaMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kannada Medium"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Passing Package
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PassingPackagePage(),
                ),
              );
            },
            child: const Text("Passing Package"),
          ),

          const SizedBox(height: 10),

          // Scoring Package
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScoringPackagePage(),
                ),
              );
            },
            child: const Text("Scoring Package"),
          ),

          const SizedBox(height: 10),

          // Score Booster
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScoreBoosterPage(),
                ),
              );
            },
            child: const Text("Score Booster"),
          ),
        ],
      ),
    );
  }
}