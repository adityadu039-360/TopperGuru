import 'package:flutter/material.dart';
import 'download_manager.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  List<String> downloads = [];

  @override
  void initState() {
    super.initState();
    loadDownloads();
  }

  Future<void> loadDownloads() async {
    downloads = await DownloadManager.getDownloads();
    setState(() {});
  }

  Future<void> deletePdf(String pdfName) async {
    await DownloadManager.removePdf(pdfName);
    loadDownloads();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Downloads"),
        centerTitle: true,
      ),
      body: downloads.isEmpty
          ? const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.download_done,
              size: 80,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Text(
              "No Downloads Yet",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Downloaded PDFs will appear here",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: downloads.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
                size: 34,
              ),
              title: Text(
                downloads[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text("Saved on this device"),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  deletePdf(downloads[index]);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}