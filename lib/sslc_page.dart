import 'package:flutter/material.dart';

class SSLCPage extends StatelessWidget {
  const SSLCPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSLC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Kannada Medium'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('English Medium'),
            ),
          ],
        ),
      ),
    );
  }
}