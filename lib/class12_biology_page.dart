import 'package:flutter/material.dart';
import 'class12_passing_package_page.dart';
import 'class12_scoring_package_page.dart';
import 'class12_physics_page.dart';

class Class12BiologyPage extends StatelessWidget {
  const Class12BiologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Subject12Page(
      title: "12th Biology",
      icon: Icons.eco,
      color: Colors.green,
      passingPage: Class12PassingPackagePage(),
      scoringPage: Class12ScoringPackagePage(),
    );
  }
}