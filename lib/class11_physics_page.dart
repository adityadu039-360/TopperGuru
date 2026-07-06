import 'package:flutter/material.dart';

class Class11PhysicsPage extends StatelessWidget {
  const Class11PhysicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("11th Physics"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "11th Physics Notes Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}