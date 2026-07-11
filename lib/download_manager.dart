import 'package:shared_preferences/shared_preferences.dart';

class DownloadManager {
  static const String downloadsKey = "downloaded_pdfs";

  static Future<void> savePdf(String pdfName) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> downloads =
        prefs.getStringList(downloadsKey) ?? [];

    if (!downloads.contains(pdfName)) {
      downloads.add(pdfName);
      await prefs.setStringList(downloadsKey, downloads);
    }
  }

  static Future<List<String>> getDownloads() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getStringList(downloadsKey) ?? [];
  }

  static Future<void> removePdf(String pdfName) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> downloads =
        prefs.getStringList(downloadsKey) ?? [];

    downloads.remove(pdfName);

    await prefs.setStringList(downloadsKey, downloads);
  }

  static Future<void> clearDownloads() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(downloadsKey);
  }
}