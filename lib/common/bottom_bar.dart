import 'dart:math';

import 'package:bizlx_app/constants/global_variables.dart';
import 'package:bizlx_app/views/account/screens/account_screen.dart';
import 'package:bizlx_app/views/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = "/actual-home";
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  // double bottomBarWidth = 88;
  // double bottomBarBorderWidth = 25;

  List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text('Menus Page'),
    ),
    const Center(
      child: Text('Contact Page'),
    ),
    const AccountScreen(),
    const Center(
      child: Text('Contact Page'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: GlobalVariables.blueColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/images/vector/Vector.png",
                  fit: BoxFit.none,
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/images/vector/Vector (1).png"),
              ),
              label: "Wishlist"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: GlobalVariables.backgroundColor,
                child: Image.asset(
                  "assets/images/vector/Vector (2).png",
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/vector/Vector (3).png"),
            ),
            label: "Accounts",
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("assets/images/vector/Vector (4).png"),
              ),
              label: "Person"),
        ],
      ),
    );
  }
}
