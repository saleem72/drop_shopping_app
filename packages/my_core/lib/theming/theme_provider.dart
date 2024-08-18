//

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_core/theming/styles.dart';

import 'color_scheme_provider.dart';
import 'pallet.dart';

class ThemeProvider {
  ThemeProvider._internal();

  static void setStatusBarAndNavigationBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? Pallet.neutral.shade700
          : Pallet.neutral.shade300,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }

  static ThemeData lightTheme(String fontFamily) {
    final colorScheme = ColorSchemeProvider.lightFromCorePalette;
    final textTheme = LightStyles.textTheme;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: Pallet.neutral.shade50,
      colorScheme: colorScheme,
      textTheme: textTheme,
      appBarTheme: LightStyles.appBarTheme,
    );
  }

  static ThemeData darkTheme(String fontFamily) => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        fontFamily: fontFamily,
        scaffoldBackgroundColor: Pallet.neutral.shade800,
        colorScheme: ColorSchemeProvider.darkFromCorePalette,
        textTheme: DarkStyles.textTheme,
        appBarTheme: DarkStyles.appBarTheme,
      );
}
