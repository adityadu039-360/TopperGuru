import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Downloads"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.download_done,
              size: 90,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              "No Downloads Yet",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Downloaded PDFs will appear here automatically.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}