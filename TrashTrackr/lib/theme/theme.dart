import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getLoginTheme() {
  return ThemeData(
    primaryColor: Color.fromARGB(223, 160, 237, 132),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF4CAF50)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white24,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: const Color.fromARGB(137, 0, 0, 0)),
    ),
    textTheme: GoogleFonts.openSansTextTheme(), // Use Open Sans font for text
  );
}
