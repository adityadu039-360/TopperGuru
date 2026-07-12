import 'package:flutter/material.dart';

class WeeklyChallengePage extends StatelessWidget {
  const WeeklyChallengePage({super.key});

  Widget buildSubjectCard(
      BuildContext context,
      String subject,
      IconData icon,
      Color color,
      ) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
            size: 28,
          ),
        ),
        title: Text(
          subject,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "10 Questions • 10 Minutes",
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Row(
                children: [
                  Icon(
                    Icons.emoji_events,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  Text("Coming Soon"),
                ],
              ),
              content: const Text(
                "🚀 Weekly Challenges will be available soon.\n\n"
                    "Every week you'll get:\n\n"
                    "✔ 10 Questions\n"
                    "✔ 10 Minutes\n"
                    "✔ Instant Score\n"
                    "✔ Weekly Rank\n\n"
                    "Stay Tuned!",
                style: TextStyle(fontSize: 16),
              ),
              actions: [
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weekly Challenge"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Icon(
              Icons.emoji_events,
              size: 80,
              color: Colors.orange,
            ),

            const SizedBox(height: 15),

            const Text(
              "Weekly Challenge",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Test your knowledge every week",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            buildSubjectCard(
              context,
              "Physics",
              Icons.science,
              Colors.blue,
            ),

            const SizedBox(height: 15),

            buildSubjectCard(
              context,
              "Chemistry",
              Icons.biotech,
              Colors.orange,
            ),

            const SizedBox(height: 15),

            buildSubjectCard(
              context,
              "Mathematics",
              Icons.calculate,
              Colors.purple,
            ),

            const SizedBox(height: 15),

            buildSubjectCard(
              context,
              "Biology",
              Icons.eco,
              Colors.green,
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}