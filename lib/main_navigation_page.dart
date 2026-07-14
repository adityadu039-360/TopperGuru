import 'package:flutter/material.dart';
import 'home_page.dart';
import 'downloads_page.dart';
import 'account_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {

  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    DownloadsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),

      bottomNavigationBar: NavigationBar(

        selectedIndex: currentIndex,

        height: 72,

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

        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}