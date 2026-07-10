import 'package:flutter/material.dart';

class KannadaScoreBoosterPage extends StatelessWidget {
  const KannadaScoreBoosterPage({super.key});

  Widget pdfCard(String title) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(
          Icons.trending_up,
          color: Colors.blue,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text("Score Booster content will be available soon"),
        trailing: const Icon(Icons.lock_outline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Booster"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Icon(
              Icons.trending_up,
              color: Colors.blue,
              size: 70,
            ),

            const SizedBox(height: 15),

            const Center(
              child: Text(
                "Kannada Medium",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            pdfCard("Score Booster 1"),
            pdfCard("Score Booster 2"),
            pdfCard("Score Booster 3"),
            pdfCard("Score Booster 4"),
            pdfCard("Score Booster 5"),
          ],
        ),
      ),
    );
  }
}