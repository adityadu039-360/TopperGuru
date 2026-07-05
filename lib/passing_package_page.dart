import 'package:flutter/material.dart';
import 'kannada_subject_page.dart';
import 'english_subject_page.dart';
import 'hindi_subject_page.dart';
import 'mathematics_subject_page.dart';
import 'science_subject_page.dart';
import 'social_science_subject_page.dart';

class PassingPackagePage extends StatelessWidget {
  const PassingPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Passing Package"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Kannada
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KannadaSubjectPage(),
                ),
              );
            },
            child: const Text("Kannada"),
          ),

          const SizedBox(height: 10),

          // English
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EnglishSubjectPage(),
                ),
              );
            },
            child: const Text("English"),
          ),

          const SizedBox(height: 10),

          // Hindi
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HindiSubjectPage(),
                ),
              );
            },
            child: const Text("Hindi"),
          ),

          const SizedBox(height: 10),

          // Mathematics
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MathematicsSubjectPage(),
                ),
              );
            },
            child: const Text("Mathematics"),
          ),

          const SizedBox(height: 10),

          // Science
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScienceSubjectPage(),
                ),
              );
            },
            child: const Text("Science"),
          ),

          const SizedBox(height: 10),

          // Social Science
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SocialScienceSubjectPage(),
                ),
              );
            },
            child: const Text("Social Science"),
          ),
        ],
      ),
    );
  }
}