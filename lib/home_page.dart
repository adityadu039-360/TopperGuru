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
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
child: ListTile(
contentPadding: const EdgeInsets.symmetric(
horizontal: 20,
vertical: 12,
),
leading: CircleAvatar(
radius: 26,
backgroundColor: color.withOpacity(0.15),
child: Icon(
icon,
color: color,
size: 30,
),
),
title: Text(
title,
style: const TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
subtitle: Text(
subtitle,
style: const TextStyle(
fontSize: 14,
color: Colors.grey,
),
),
trailing: const Icon(Icons.arrow_forward_ios_rounded),
onTap: onTap,
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
child: const Icon(
Icons.school,
size: 55,
color: Colors.blue,
),
),

const SizedBox(height: 15),

const Text(
"TopperGuru",
style: TextStyle(
fontSize: 32,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 6),

const Text(
"Learn Smart • Score Higher",
style: TextStyle(
fontSize: 16,
color: Colors.grey,
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
MaterialPageRoute(
builder: (_) => const SSLCPage(),
),
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
MaterialPageRoute(
builder: (_) => const Class11Page(),
),
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
MaterialPageRoute(
builder: (_) => const Class12Page(),
),
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