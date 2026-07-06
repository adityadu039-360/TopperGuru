import 'package:flutter/material.dart';

class ChemistrySubjectPage extends StatelessWidget {
  const ChemistrySubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chemistry"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Chemistry Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}