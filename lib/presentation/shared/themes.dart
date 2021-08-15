import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mPrimaryColor = Color(0xFFEA601C);
const mSecondaryColor = Color(0xFFBFBFBF);
const mContentColorLightTheme = Color(0xFF181818);
const mContentColorDarkTheme = Color(0xFFF5FCF9);
const mWarninngColor = Color(0xFFF3BB1C);
const mErrorColor = Color(0xFFF03738);

const mDefaultPadding = 20.0;

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: mContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: mContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: mPrimaryColor,
      secondary: mSecondaryColor,
      error: mErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: mContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: mContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: mPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: mContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: mContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: mContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: mPrimaryColor,
      secondary: mSecondaryColor,
      error: mErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: mContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: mContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: mPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}
