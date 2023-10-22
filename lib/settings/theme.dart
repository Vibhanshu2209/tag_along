import 'package:flutter/material.dart';

class MyColors {

  Color primary = Colors.black38;

}

class MyTheme with ChangeNotifier{

  static ThemeMode themeMode = ThemeMode.system;

  static ThemeData defaultLight = ThemeData.light(
    useMaterial3: true,
    ).copyWith(
      cardTheme: CardTheme(
        surfaceTintColor: Colors.lime,
        elevation: 10,
        color: Colors.white
      ),
      cardColor: Colors.white70
    );
  static ThemeData defaultDark = ThemeData.dark(useMaterial3: true).copyWith(
      cardTheme: CardTheme(
        elevation: 0,
        color: Colors.black45
      )
    );

  toggleTheme(bool isDark){
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

}