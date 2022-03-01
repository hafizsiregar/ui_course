import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xFF0B0D1C);
Color kSecondaryColor = Color(0xff26283D);
Color kBlackColor = Colors.black;
Color kWhiteColor = Colors.white;
Color kGreyColor = Colors.grey;

Widget shadowHome = Container(
  height: 24,
  width: 24,
  decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: kWhiteColor.withOpacity(0.6),
        spreadRadius: 3 ,
        blurRadius: 16,
        offset: Offset(0, 8),
      ),
    ],
  ),
  child: Icon(Icons.home),
);

Widget shadowCategory = Container(
  height: 24,
  width: 24,
  decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: kWhiteColor.withOpacity(0.6),
        spreadRadius: 3 ,
        blurRadius: 16,
        offset: Offset(0, 8),
      ),
    ],
  ),
  child: Icon(Icons.category),
);

Widget shadowSaved = Container(
  height: 24,
  width: 24,
  decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: kWhiteColor.withOpacity(0.6),
        spreadRadius: 3 ,
        blurRadius: 16,
        offset: Offset(0, 8),
      ),
    ],
  ),
  child: Icon(Icons.favorite),
);

Widget shadowSetting = Container(
  height: 24,
  width: 24,
  decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: kWhiteColor.withOpacity(0.6),
        spreadRadius: 3 ,
        blurRadius: 16,
        offset: Offset(0, 8),
      ),
    ],
  ),
  child: Icon(Icons.settings),
);