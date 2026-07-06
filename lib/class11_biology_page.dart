import 'package:flutter/material.dart';

class Class11BiologyPage extends StatelessWidget {
  const Class11BiologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("11th Biology"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "11th Biology Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}