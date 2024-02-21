import 'package:flutter/material.dart';
import '../styles/color_styles.dart';

final ThemeData themeDark = ThemeData(
 useMaterial3: false,
  fontFamily: 'SairaSemiCondensed',
  primarySwatch: const MaterialColor(4280361249, {
    50: Color(0xfff2f2f2),
    100: Color(0xffe6e6e6),
    200: Color(0xffcccccc),
    300: Color(0xffb3b3b3),
    400: Color(0xff999999),
    500: Color(0xff808080),
    600: Color(0xff666666),
    700: Color(0xff4d4d4d),
    800: Color(0xff333333),
    900: Color(0xff191919)
  }),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: ColorStyles.darkAccentText, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(color: ColorStyles.darkCardFrontText, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(color: ColorStyles.darkCardSubText),
    titleSmall: TextStyle(color: Color.fromRGBO(143, 161, 181, 1)),
    labelLarge: TextStyle(color: ColorStyles.darkCardFrontText, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(color: Color(0xFF8592A1), fontWeight: FontWeight.w500),
    labelMedium: TextStyle(color: ColorStyles.darkAccentText, fontWeight: FontWeight.w600),
  
  ),


);
