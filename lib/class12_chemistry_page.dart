import 'package:flutter/material.dart';

class Class12ChemistryPage extends StatelessWidget {
  const Class12ChemistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Chemistry"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "12th Chemistry Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}