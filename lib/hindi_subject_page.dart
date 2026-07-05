import 'package:flutter/material.dart';

class HindiSubjectPage extends StatelessWidget {
  const HindiSubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hindi"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Hindi Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}