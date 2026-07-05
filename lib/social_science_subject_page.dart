import 'package:flutter/material.dart';

class SocialScienceSubjectPage extends StatelessWidget {
  const SocialScienceSubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Science"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Social Science Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}