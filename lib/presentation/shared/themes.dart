import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mPrimaryColor = Color(0xFFECE5C9);
const mSecondaryColor = Color(0xFFDDBCA9);
const mContentColorLightTheme = Color(0xFF181818);
const mContentColorDarkTheme = Color(0xFFF5FCF9);
const mWarninngColor = Color(0xFFF3BB1C);
const mErrorColor = Color(0xFFF03738);

const mDefaultPadding = 20.0;

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: mPrimaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: false,
      elevation: 0,
      textTheme: GoogleFonts.frauncesTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: mContentColorLightTheme),
    ),
    iconTheme: IconThemeData(color: mContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: mContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: mPrimaryColor,
      secondary: mSecondaryColor,
      error: mErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: mPrimaryColor,
      selectedItemColor: mContentColorLightTheme,
      unselectedItemColor: mSecondaryColor,
      selectedIconTheme: IconThemeData(color: mContentColorLightTheme),
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
    appBarTheme: AppBarTheme(
        centerTitle: false,
        elevation: 0,
        textTheme: GoogleFonts.frauncesTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: mPrimaryColor)),
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
