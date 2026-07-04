import 'package:flutter/material.dart';

class PassingPackagePage extends StatelessWidget {
  const PassingPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Passing Package"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Passing Package Content Coming Soon",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}