import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appThemeData = ThemeData(
  primaryColor: const Color(0xFF2E2739),
  primaryColorLight: const Color(0xFF564CA3),
  primaryTextTheme: GoogleFonts.poppinsTextTheme(),
  scaffoldBackgroundColor: const Color(0xFFEFEFEF),
  appBarTheme: const AppBarTheme(
    foregroundColor: Color(0xFF2E2739),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),
);
