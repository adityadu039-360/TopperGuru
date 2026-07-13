import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;
  bool notifications = true;

  Widget settingTile({
    required IconData icon,
    required Color color,
    required String title,
    required Widget trailing,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        trailing: trailing,
      ),
    );
  }

  Widget normalTile({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("$title coming soon"),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const SizedBox(height: 10),

            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 50,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Settings",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            settingTile(
              icon: Icons.dark_mode,
              color: Colors.deepPurple,
              title: "Dark Mode",
              trailing: Switch(
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Full Dark Mode coming soon",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 12),

            settingTile(
              icon: Icons.notifications,
              color: Colors.orange,
              title: "Notifications",
              trailing: Switch(
                value: notifications,
                onChanged: (value) {
                  setState(() {
                    notifications = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 12),

            normalTile(
              icon: Icons.language,
              color: Colors.green,
              title: "Language",
              subtitle: "English",
            ),

            const SizedBox(height: 12),

            normalTile(
              icon: Icons.privacy_tip,
              color: Colors.blue,
              title: "Privacy Policy",
              subtitle: "Read our privacy policy",
            ),

            const SizedBox(height: 12),

            normalTile(
              icon: Icons.description,
              color: Colors.red,
              title: "Terms & Conditions",
              subtitle: "View terms",
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}