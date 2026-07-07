import 'package:flutter/material.dart';

class Class12BiologyPage extends StatelessWidget {
  const Class12BiologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Biology"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "12th Biology Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}