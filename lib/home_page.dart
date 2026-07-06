import 'package:flutter/material.dart';
import 'sslc_page.dart';
import 'class11_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopperGuru'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 10th Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SSLCPage(),
                  ),
                );
              },
              child: const Text('10th'),
            ),

            const SizedBox(height: 15),

            // 11th Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Class11Page(),
                  ),
                );
              },
              child: const Text('11th'),
            ),

            const SizedBox(height: 15),

            // 12th Button
            ElevatedButton(
              onPressed: () {},
              child: const Text('12th'),
            ),

            const SizedBox(height: 15),

            // Topper Corner Button
            ElevatedButton(
              onPressed: () {},
              child: const Text('Topper Corner'),
            ),
          ],
        ),
      ),
    );
  }
}