import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:flutter/material.dart';

///The app was designed in a light theme mode.
///There is no dark theme mode for now.

/// How to use app colorScheme:
/// If you are assigning a color property to a widget that has it's color value as a member of the colors in the app theme,
/// you should assign the color as so => 'color: Theme.of(context).colorScheme.colorNameAccordingToTheme' e.g Theme.of(context).colorScheme.background

/// How to use app theme:
/// In your main.dart file, inside the MaterialApp() method, you should assign the theme parameter as so => 'theme: AfmThemeManager.lightTheme

///  How to use app textTheme:
/// If you are assigning a textStyle property to a text widget that has it's style values as a member of the textStyles in the app theme,
/// You should assign the textStyle as so => 'textStyle: Theme.of(context).textStyle.textStyleNameAccordingToTheme' e.g Theme.of(context).colorScheme.bodyLarge

class ArtsyThemeManager {
  ArtsyThemeManager._();

  static String get _fontFamily => 'Satoshi';
  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static final ColorScheme _lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: ArtsyColors.primaryTextColor,
    secondary: ArtsyColors.secondaryTextColor,
    background: ArtsyColors.backgroundColor,
    inverseSurface: ArtsyColors.secondaryColor.shade400,
    surface: ArtsyColors.secondaryTextColor,
  );

  static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
      scaffoldBackgroundColor: colorScheme.background,
      colorScheme: colorScheme,
      textTheme: _textTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      fontFamily: _fontFamily,
      appBarTheme: _appBarTheme(colorScheme),
      disabledColor: colorScheme.inverseSurface,
      brightness: colorScheme.brightness,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.background,
      ));

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        headlineLarge: TextStyle(
            fontSize: 32,
            color: ArtsyColors.menuBarTextColor,
            fontWeight: FontWeight.w900,
            fontFamily: 'ClashDisplay'),
        titleLarge: TextStyle(
          fontSize: 28,
          color: ArtsyColors.menuBarTextColor,
          fontWeight: FontWeight.w900,
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          color: ArtsyColors.menuBarTextColor,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
           
            fontSize: 20,
            color: ArtsyColors.menuBarTextColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Satoshi'),
        bodySmall: TextStyle(
          fontSize: 16,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
      );

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        backgroundColor: colorScheme.background,
        iconTheme: _iconTheme(colorScheme),
        actionsIconTheme: _iconTheme(colorScheme),
      );

  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onSurface,
      );
}
