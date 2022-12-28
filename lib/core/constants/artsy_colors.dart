import 'package:flutter/material.dart';

/// Color Guide Notice (GREEN, RED, YELLOW, INFO COLOR)
/// Ranging from (50-900)
/// 50 = Light, 100 = Light :hover, 200 = Light :active,
/// 300 = Normal, 400 = Normal :hover, 500 = Normal :active,
/// 600 = Dark, 700 = Dark :hover, 800 = Dark :active, 800 = Darker

/// Color Guide Notice (GREYS)
/// Ranging from (50-900)
/// 50 = Normal, 100 = Normal :hover, 200 = Normal :active,
/// 300 = Dark, 400 = Dark :hover, 500 = Dark :active,
/// 600 = Darker, 700 = Dark :hover, 800 = Dark :active, 800 = Darker

class ArtsyColors {
  ArtsyColors._();

  static Color menuBarTextColor = const Color(0xff333333);
  static Color photographyTextColor = const Color(0xff333333);
  static Color primaryTextColor = const Color(0xff616161);
  static Color secondaryTextColor = const Color(0xff000000);
  static Color dropdownContainerColor = const Color(0xffF2F2F2);
  static Color butttonBackgroundColor = const Color(0xff3341C1);
  static Color backgroundColor = const Color(0xffF2F2F2);
  static Color lightWhiteBackgroundColor = const Color(0xffE2E2E2);
  static Color bottomnavColor = const Color(0xffC05609);
  static Color floatingActionbtnColor = const Color(0xffC05609);
  static Color bottomnavbarSelectedColor = const Color(0xff3341C1);

  static const int _primaryColorValue = 0xff2E3192;
  static const int _secondaryColorValue = 0xFF737373;

  static const MaterialColor primaryColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      100: Color(0xffE9EEF7),
      200: Color(0xffC4D5EE),
      300: Color(0xffB7B9E6),
      400: Color(0xff8388C9),
      500: Color(0xff5052A5),
      600: Color(_primaryColorValue),
      700: Color(0xff202065),
      800: Color(0xff171646),
      900: Color(0xff140F31),
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryColorValue,
    <int, Color>{
      50: Color(0xFFFEFEFF),
      100: Color(0xFFEEEFFF),
      200: Color(0xFFCCCCCC),
      300: Color(0xFFBFBFBF),
      400: Color(0xFF999999),
      500: Color(_secondaryColorValue),
      600: Color(0xFF52515B),
      700: Color(0xFF171B1D),
      800: Color(0xFF111416),
      900: Color(0xFF020313),
    },
  );
}
