import 'package:flutter/material.dart';

class AppColorTheme {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xff244b3a),
      onPrimary: Colors.white,
      primaryContainer: Color(0xff41735f),
      onPrimaryContainer: Color(0xff244b3a),
      primaryFixedDim: Color(0xff023022),
      surface: Colors.white,
      surfaceContainer: Color(0xfff4f4f4),
      onSurface: Colors.black,
      onSurfaceVariant: Color(0xff707070),
    ),
  );
}
