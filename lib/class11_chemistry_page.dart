import 'package:flutter/material.dart';

class Class11ChemistryPage extends StatelessWidget {
  const Class11ChemistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("11th Chemistry"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "11th Chemistry Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}