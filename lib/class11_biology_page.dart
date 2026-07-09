import 'package:flutter/material.dart';
import 'class11_passing_package_page.dart';
import 'class11_scoring_package_page.dart';
import 'class11_physics_page.dart';

class Class11BiologyPage extends StatelessWidget {
  const Class11BiologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SubjectPage(
      title: "11th Biology",
      icon: Icons.eco,
      color: Colors.green,
      passingPage: Class11PassingPackagePage(),
      scoringPage: Class11ScoringPackagePage(),
    );
  }
}