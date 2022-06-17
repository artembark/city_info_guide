import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  navigationBarTheme: const NavigationBarThemeData().copyWith(
    labelTextStyle: MaterialStateProperty.all(
      GoogleFonts.montserrat(),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      textStyle: MaterialStateProperty.all(
          GoogleFonts.montserrat(color: Colors.black)),
      // backgroundColor:
      //     MaterialStateProperty.all(const Color(0xFFbad6ec)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    ),
  ),
  appBarTheme: const AppBarTheme().copyWith(
    iconTheme: const IconThemeData(
      color: Colors.black, //change your color here
    ),
    titleTextStyle: GoogleFonts.montserrat(
        color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
    elevation: 0,
    color: Colors.transparent,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.black38,
      statusBarIconBrightness: Brightness.light,
      // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
  ),
);
