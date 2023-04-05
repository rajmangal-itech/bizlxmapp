import 'package:bizlx_mobile_app/screens/Ui/homeview/home_screen.dart';
import 'package:bizlx_mobile_app/screens/Ui/Infoscreenview/info_screens.dart';
import 'package:bizlx_mobile_app/screens/Ui/Wishlistview/wishlist_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WishlistPage(),
    // Text('Wishlist'),
    const Text('Menus'),
    const Text('Account'),
    InfoScreens()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('Tapped index is ${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF0165A3),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 5,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/vector/Vector.png",
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/vector/Vector (1).png"),
              label: "Wishlist"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/vector/Vector (2).png")),
              label: "Menus"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/vector/Vector (3).png"),
              label: "Accounts"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/vector/Vector (4).png"),
              label: "Person"),
        ],
      ),
    );
  }
}
