import 'package:course_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'saved_page.dart';
import 'setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final bool glow = false;
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    CategoryPage(),
    SavedPage(),
    SettingPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          selectedIconTheme: IconThemeData(
            color: kWhiteColor,
          ),
          unselectedIconTheme: IconThemeData(
            color: kGreyColor,
          ),
          selectedLabelStyle: TextStyle(
            color: kWhiteColor,
          ),
          unselectedLabelStyle: TextStyle(
            color: kGreyColor
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0 ? shadowHome : Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1 ? shadowCategory : Icon(Icons.category),
            label: 'Categries'
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2 ? shadowSaved : Icon(Icons.favorite),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3 ? shadowSetting : Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}