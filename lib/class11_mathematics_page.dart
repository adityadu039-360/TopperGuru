import 'package:flutter/material.dart';
import 'class11_passing_package_page.dart';
import 'class11_scoring_package_page.dart';
import 'class11_physics_page.dart';

class Class11MathematicsPage extends StatelessWidget {
  const Class11MathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SubjectPage(
      title: "11th Mathematics",
      icon: Icons.calculate,
      color: Colors.purple,
      passingPage: Class11PassingPackagePage(),
      scoringPage: Class11ScoringPackagePage(),
    );
  }
}