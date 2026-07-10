import 'package:flutter/material.dart';

class KannadaScoringPackagePage extends StatelessWidget {
  const KannadaScoringPackagePage({super.key});

  Widget pdfCard(String title) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(
          Icons.workspace_premium,
          color: Colors.orange,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text("Premium PDF will be available soon"),
        trailing: const Icon(Icons.lock_outline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scoring Package"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Icon(
              Icons.workspace_premium,
              color: Colors.orange,
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
            pdfCard("Premium PDF 1"),
            pdfCard("Premium PDF 2"),
            pdfCard("Premium PDF 3"),
            pdfCard("Premium PDF 4"),
            pdfCard("Premium PDF 5"),
          ],
        ),
      ),
    );
  }
}