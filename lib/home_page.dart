import 'package:flutter/material.dart';
import 'sslc_page.dart';
import 'class11_page.dart';
import 'class12_page.dart';
import 'downloads_page.dart';
import 'account_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget buildCard({
    required BuildContext context,
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        leading: CircleAvatar(
          radius: 26,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color, size: 30),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: onTap,
      ),
    );
  }

  Widget subjectCard(
    BuildContext context,
    IconData icon,
    Color color,
    String title,
  ) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const Class12Page()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: color.withOpacity(0.15),
              child: Icon(icon, color: color, size: 30),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget homeBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 15),

          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.school, size: 55, color: Colors.blue),
          ),

          const SizedBox(height: 15),

          const Text(
            "TopperGuru",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          const Text(
            "Learn Smart • Score Higher",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xff1565C0), Color(0xff42A5F5)],
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "👋 Welcome, Adithya!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Let's learn something amazing today.",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: 170,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const Class12Page()),
                      );
                    },
                    icon: const Icon(Icons.play_arrow),
                    label: const Text("Start Learning"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "🔥 Popular Subjects",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 18),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.25,
            children: [
              subjectCard(context, Icons.science, Colors.blue, "Physics"),

              subjectCard(context, Icons.biotech, Colors.green, "Chemistry"),

              subjectCard(
                context,
                Icons.calculate,
                Colors.orange,
                "Mathematics",
              ),

              subjectCard(context, Icons.eco, Colors.purple, "Biology"),
            ],
          ),

          const SizedBox(height: 30),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xff1976D2), Color(0xff42A5F5)],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [
                Icon(Icons.celebration, color: Colors.white, size: 42),

                SizedBox(height: 10),

                Text(
                  "🎉 FREE FOR 2026",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "All Study Materials are FREE\nfor every Karnataka Student.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
          buildCard(
            context: context,
            icon: Icons.menu_book,
            color: Colors.blue,
            title: "10th Standard",
            subtitle: "SSLC Study Materials",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SSLCPage()),
              );
            },
          ),

          const SizedBox(height: 15),

          buildCard(
            context: context,
            icon: Icons.science,
            color: Colors.green,
            title: "11th Standard",
            subtitle: "PUC First Year",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Class11Page()),
              );
            },
          ),

          const SizedBox(height: 15),

          buildCard(
            context: context,
            icon: Icons.auto_stories,
            color: Colors.orange,
            title: "12th Standard",
            subtitle: "PUC Second Year",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Class12Page()),
              );
            },
          ),

          const SizedBox(height: 15),

          buildCard(
            context: context,
            icon: Icons.emoji_events,
            color: Colors.purple,
            title: "Topper Corner",
            subtitle: "Tips & Motivation",
            onTap: () {},
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      homeBody(),
      const DownloadsPage(),
      const AccountPage(),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("TopperGuru"), centerTitle: true),
      body: pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        height: 75,
        backgroundColor: Colors.white,
        indicatorColor: Colors.blue.shade100,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.download_outlined),
            selectedIcon: Icon(Icons.download),
            label: "Downloads",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
