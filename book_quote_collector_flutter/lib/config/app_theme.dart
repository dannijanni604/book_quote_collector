import 'package:book_quote_collector_flutter/config/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        isDense: true,
        filled: true,
        fillColor: kPrimaryLightColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor)));
}
