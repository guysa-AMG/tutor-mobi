import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tutor/screens/chat.dart';
import 'package:tutor/screens/home.dart';
import 'package:tutor/screens/skillScreen.dart';
import 'package:tutor/service/state_mgmt/controller/uiController.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            context.read<Uicontroller>().toggle();
          },
          icon: Icon(LucideIcons.moon),
        ),
      ),
      body: Center(child: SkillScreen()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MessageScreen()),
          ),
        },
        child: Icon(LucideIcons.bot),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: current_index,
        onTap: (value) {
          setState(() {
            current_index = value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(LucideIcons.home), label: "HOME"),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.navigation),
            label: "EXPLORE",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.book),
            label: "LEARNING",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
