import 'package:flutter/material.dart';

final ColorScheme lightColorScheme = ColorScheme.light(
  primary: Colors.blue,
  secondary: Colors.orange,
  surface: Colors.grey[100]!,
  onPrimary: Colors.white,
  onSecondary: Colors.black,
  error: Colors.red,
);

final ColorScheme darkColorScheme = ColorScheme.dark(
  primary: Colors.blueGrey,
  secondary: Colors.deepOrange,
  surface: Colors.grey[850]!,
  onPrimary: Colors.black,
  onSecondary: Colors.white,
  error: Colors.red,
);

final ThemeData lightTheme = ThemeData(
  colorScheme: lightColorScheme,
);

final ThemeData darkTheme = ThemeData(
  colorScheme: darkColorScheme,
);
