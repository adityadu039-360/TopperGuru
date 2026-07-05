import 'package:flutter/material.dart';

class EnglishSubjectPage extends StatelessWidget {
  const EnglishSubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("English"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "English Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}