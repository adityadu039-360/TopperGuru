import 'package:flutter/material.dart';
import 'class12_passing_package_page.dart';
import 'class12_scoring_package_page.dart';
import 'class12_physics_page.dart';

class Class12MathematicsPage extends StatelessWidget {
  const Class12MathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Subject12Page(
      title: "12th Mathematics",
      icon: Icons.calculate,
      color: Colors.purple,
      passingPage: Class12PassingPackagePage(),
      scoringPage: Class12ScoringPackagePage(),
    );
  }
}