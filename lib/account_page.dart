import 'package:flutter/material.dart';
import 'weekly_challenge_page.dart';
import 'login_page.dart';
import 'about_page.dart';

class AccountPage extends StatelessWidget {
const AccountPage({super.key});

Widget buildTile({
required IconData icon,
required Color color,
required String title,
required String subtitle,
required VoidCallback onTap,
}) {
return Card(
elevation: 5,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
child: ListTile(
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
title,
style: const TextStyle(
fontWeight: FontWeight.bold,
fontSize: 18,
),
),
subtitle: Text(subtitle),
trailing: const Icon(Icons.arrow_forward_ios_rounded),
onTap: onTap,
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xffF5F7FA),

body: SafeArea(
child: SingleChildScrollView(
padding: const EdgeInsets.all(16),

child: Column(
children: [

const SizedBox(height: 20),

const CircleAvatar(
radius: 55,
backgroundColor: Colors.blue,
child: Icon(
Icons.person,
size: 60,
color: Colors.white,
),
),

const SizedBox(height: 15),

  const Text(
    "Guest User",
    style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 5),

  const Text(
    "Login to unlock all features",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 15,
    ),
  ),

  const SizedBox(height: 20),

  SizedBox(
    width: double.infinity,
    height: 55,
    child: ElevatedButton.icon(
      icon: const Icon(Icons.login),
      label: const Text(
        "Login",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginPage(),
          ),
        );
      },
    ),
  ),

const SizedBox(height: 30),

buildTile(
icon: Icons.emoji_events,
color: Colors.orange,
title: "Weekly Challenge",
subtitle: "Play weekly MCQ challenge",
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (_) =>
const WeeklyChallengePage(),
),
);
},
),

const SizedBox(height: 12),

buildTile(
icon: Icons.dark_mode,
color: Colors.deepPurple,
title: "Dark Mode",
subtitle: "Coming Soon",
onTap: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text(
"Dark Mode will be available soon.",
),
),
);
},
),

const SizedBox(height: 12),

buildTile(
icon: Icons.star_rate,
color: Colors.amber,
title: "Rate App",
subtitle: "Support TopperGuru",
onTap: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text(
"Play Store rating coming soon.",
),
),
);
},
),

const SizedBox(height: 12),              buildTile(
    icon: Icons.share,
    color: Colors.green,
    title: "Share App",
    subtitle: "Share TopperGuru with friends",
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Share feature coming soon.",
          ),
        ),
      );
    },
  ),

  const SizedBox(height: 12),

  buildTile(
    icon: Icons.info,
    color: Colors.blue,
    title: "About App",
    subtitle: "Version 1.0.0",
    onTap: () {
      showAboutDialog(
        context: context,
        applicationName: "TopperGuru",
        applicationVersion: "1.0.0",
        applicationLegalese:
        "© 2026 TopperGuru",
      );
    },
  ),

  const SizedBox(height: 12),

  buildTile(
    icon: Icons.logout,
    color: Colors.red,
    title: "Logout",
    subtitle: "Logout from your account",
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "You are not logged in.",
          ),
        ),
      );
    },
  ),

  const SizedBox(height: 30),
],
),
),
),
);
}
}
