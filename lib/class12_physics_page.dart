import 'package:flutter/material.dart';

class Class12PhysicsPage extends StatelessWidget {
  const Class12PhysicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Physics"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "12th Physics Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}