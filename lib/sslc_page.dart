import 'package:flutter/material.dart';
import 'kannada_medium_page.dart';

class SSLCPage extends StatelessWidget {
  const SSLCPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSLC'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KannadaMediumPage(),
                  ),
                );
              },
              child: const Text('Kannada Medium'),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                // English Medium page will be added later
              },
              child: const Text('English Medium'),
            ),
          ],
        ),
      ),
    );
  }
}