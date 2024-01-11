import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: const Color.fromRGBO(18, 140, 126, 1),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme.copyWith(
          backgroundColor: const Color.fromRGBO(18, 140, 126, 1)),
      iconTheme: const IconThemeData(color: Color(0xFF1D1D35)),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: const Color(0xFF1D1D35)),
      colorScheme: const ColorScheme.light(
        primary: Color.fromRGBO(18, 140, 126, 1),
        inversePrimary: Colors.white,
        secondary: Color.fromRGBO(220, 248, 198, 1),
        error: Color(0xFFF03738),
      ),
      tabBarTheme: const TabBarTheme(
          indicatorColor: Color.fromRGBO(18, 140, 126, 1),
          labelColor: Colors.white,
          unselectedLabelColor: Color.fromARGB(193, 236, 236, 236)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromRGBO(18, 140, 126, 1),
      ));
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: const Color.fromRGBO(18, 140, 126, 1),
      scaffoldBackgroundColor: const Color.fromRGBO(19, 28, 33, 1),
      appBarTheme: appBarTheme.copyWith(
          backgroundColor: const Color.fromRGBO(31, 44, 52, 1)),
      iconTheme: const IconThemeData(color: Color(0xFFF5FCF9)),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: const Color(0xFFF5FCF9)),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: const Color.fromRGBO(18, 140, 126, 1),
        secondary: const Color.fromRGBO(7, 94, 84, 1),
        inversePrimary: const Color.fromRGBO(31, 44, 52, 1),
        error: const Color(0xFFF03738),
      ),
      tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(fontSize: 16),
        unselectedLabelStyle: TextStyle(fontSize: 16),
        indicatorColor: Color.fromRGBO(18, 140, 126, 1),
        dividerColor: Color.fromRGBO(31, 44, 52, 1),
        unselectedLabelColor: Colors.grey,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromRGBO(18, 140, 126, 1),
      ));
}
