import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  // static const Color main = Color(0xFF2AD2F9);
  // static const Color mainLight = Color(0xFF27DAFA);
  // static const Color mainDark = Color(0xFF439EF1);

  static const Color scaffold = Color(0xFFF1F4FF);

  static const Color secondary = Color(0xFF2AD2F9);
  static const Color secondaryLight = Color(0xFF27DAFA);
  static const Color secondaryDark = Color(0xFF439EF1);

  static const Color greenLight = Color(0xFF69C275);
  static const Color greenDark = Color(0xFF1D5B26);

  static const Color redLight = Color(0xFFEB2929);
  static const Color redDark = Color(0xFF761515);

  static const Color gray = Color(0xFFA0A0A0);
  static const Color whiteLight = Color(0xFFECECEC);

  static const Color font = Color(0xFF03205D);
  static const Color subFont = Color(0x5603205D); // Hint Color

  // static const List<Color> mainGradient = [mainLight, main];
  static const List<Color> secondaryGradient = [secondaryLight, secondaryDark];
  static const List<Color> appbarGradient = [secondaryDark, Color(0xFF4C5AF1)];

  static lightTheme(BuildContext context) => darkTheme(context);

  static darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: scaffold,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme.of(context).copyWith(
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: font,
            fontFamily: 'Poppins',
            fontSize: 14,
          ),
          headline6: TextStyle(color: gray, fontFamily: 'Poppins'),
          subtitle1: TextStyle(color: font, fontFamily: 'Poppins'),
          subtitle2: TextStyle(color: gray, fontFamily: 'Poppins'),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: const ButtonStyle().copyWith(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.w),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(secondaryLight),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
