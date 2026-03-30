import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tutor/screens/chat.dart';
import 'package:tutor/screens/home.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Home()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MessageScreen()),
          ),
        },
        child: Icon(LucideIcons.bot),
      ),

      bottomNavigationBar: NavigationBar(
   
        selectedIndex: current_index,
        onDestinationSelected: (value) {
          setState(() {
            current_index = value;
          });
        },
        
        destinations: [
          NavigationDestination(icon: Icon(LucideIcons.home), label: "HOME"),
          NavigationDestination(
            icon: Icon(LucideIcons.navigation),
            label: "EXPLORE",
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.book),
            label: "LEARNING",
          ),
          NavigationDestination(icon: Icon(LucideIcons.user), label: "Profile"),
        ],
      ),
    );
  }
}
