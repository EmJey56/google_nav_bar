// This file is made by EmJey
// Project: google_nav_bar_example
// FileName: home_page
// Date: 2022/06/30
// Email: emjey561@gmail.com
// Github: EmJey56

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_nav_bar_example/pages/about_me.dart';
import 'package:google_nav_bar_example/pages/hello.dart';
import 'package:google_nav_bar_example/pages/social_media.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({Key? key}) : super(key: key);

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  int _selectedIndex = 0;

  void _navigateBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [AboutMe(), Hello(), SocialMediaPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.person,
                text: "About Me",
              ),
              GButton(
                icon: Icons.share,
                text: "Social Media",
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _navigateBar,
          ),
        ),
      ),
    );
  }
}
