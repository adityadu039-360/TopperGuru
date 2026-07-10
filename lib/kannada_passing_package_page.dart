import 'package:flutter/material.dart';

class KannadaPassingPackagePage extends StatelessWidget {
  const KannadaPassingPackagePage({super.key});

  Widget pdfCard(String title) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text("PDF will be available soon"),
        trailing: const Icon(Icons.lock_outline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Passing Package"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Icon(
              Icons.menu_book,
              color: Colors.green,
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

            pdfCard("PDF 1"),
            pdfCard("PDF 2"),
            pdfCard("PDF 3"),
            pdfCard("PDF 4"),
            pdfCard("PDF 5"),
            pdfCard("PDF 6"),
          ],
        ),
      ),
    );
  }
}