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
            backgroundColor: kPrimaryColor,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(Icons.favorite_sharp),
            title: Text('Saved'),
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}