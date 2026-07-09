import 'package:flutter/material.dart';

class Class12PassingPackagePage extends StatelessWidget {
  const Class12PassingPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("12th Passing Package"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "12th Passing Package PDFs Coming Soon",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}