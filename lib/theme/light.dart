import 'package:flutter/material.dart';
import 'package:soko_beauty/colors/colors.dart';

ThemeData lightMode = ThemeData(
  // 1. App-wide settings
  brightness: Brightness.light,
  primaryColor: sbdarkBrown,

  canvasColor: Colors.grey.shade100,
  cardColor: Colors.white,
  fontFamily: 'Poppins',
  fontFamilyFallback: ['Helvetica'],
  package: 'Soko Beauty',
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.grey.shade100,
  //2 - floating ACTIONS BUTTON
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.red.shade50.withOpacity(0.6),
      foregroundColor: Colors.white,
      elevation: 1,
      iconSize: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      splashColor: Color.fromARGB(132, 255, 82, 82)),
  splashFactory: NoSplash.splashFactory,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: sbbrickRed,
  ),

  //TabBar Theme
  tabBarTheme: TabBarTheme(
    labelColor: sbbrickRed,
    indicatorColor: sbbrickRed,
    labelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  //chip theme
  chipTheme: ChipThemeData(
    backgroundColor: Colors.transparent,
    selectedColor: sbbrickRed,
    secondarySelectedColor: sbbrickRed,
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    labelStyle: TextStyle(
      color: sbdarkBrown,
      fontSize: 13,
    ),
    secondaryLabelStyle: TextStyle(
      fontSize: 13,
      // fontWeight: FontWeight.bolD,
    ),
    brightness: Brightness.dark,
  ),
  //3 - APPBAR THEME
  appBarTheme: AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: sbdeepRed,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    foregroundColor: sbdeepRed,
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),

  //4 - NAVBAR THEME
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: Colors.red.shade50,
      unselectedItemColor: Colors.grey.shade800,
      unselectedLabelStyle: TextStyle(color: Colors.grey.shade800),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: sbdeepRed),
      selectedLabelStyle: TextStyle(color: sbdeepRed),
      selectedItemColor: sbdeepRed),

  //5 - BottomAppbar THEME
  bottomAppBarTheme: BottomAppBarTheme(
    color: Colors.red.shade50,
    surfaceTintColor: Colors.transparent,
    elevation: 10,
    height: 50.0,
    padding: EdgeInsets.all(0.0),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
      foregroundColor: MaterialStateProperty.all(sbdarkBrown),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.all(0.0)),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
    ),
  ),
);
