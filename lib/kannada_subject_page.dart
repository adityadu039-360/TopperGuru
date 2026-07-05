import 'package:flutter/material.dart';

class KannadaSubjectPage extends StatelessWidget {
  const KannadaSubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kannada"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Kannada Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}