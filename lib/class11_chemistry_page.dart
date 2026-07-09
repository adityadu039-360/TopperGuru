import 'package:flutter/material.dart';
import 'class11_passing_package_page.dart';
import 'class11_scoring_package_page.dart';
import 'class11_physics_page.dart';

class Class11ChemistryPage extends StatelessWidget {
  const Class11ChemistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SubjectPage(
      title: "11th Chemistry",
      icon: Icons.biotech,
      color: Colors.orange,
      passingPage: Class11PassingPackagePage(),
      scoringPage: Class11ScoringPackagePage(),
    );
  }
}