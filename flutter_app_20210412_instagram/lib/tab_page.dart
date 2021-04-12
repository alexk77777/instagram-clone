import 'package:flutter/material.dart';
import 'package:flutter_app_instagram/account_page.dart';
import 'package:flutter_app_instagram/HomePage.dart';
import 'package:flutter_app_instagram/login_page.dart';
import 'package:flutter_app_instagram/root_page.dart';
import 'package:flutter_app_instagram/search_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _pages = [HomePage(),SearchPage(),AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home', ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search',),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'account',),
        ],
      )
    );
}
  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex=value;
    });
  }
}

