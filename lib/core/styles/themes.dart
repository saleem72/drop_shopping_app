//

import 'package:my_core/theming/pallet.dart';
import 'package:my_core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:my_core/theming/color_scheme_provider.dart';

class DropShoppingTheme {
  static const String fontFamily = 'Product Sans';
  static ThemeData dark = ThemeData(
    fontFamily: fontFamily,
    // canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Pallet.neutral.shade800,
    colorScheme: ColorSchemeProvider.darkFromCorePalette,
    textTheme: DarkStyles.textTheme,
    progressIndicatorTheme: DarkStyles.progressIndicatorTheme,
    elevatedButtonTheme: DarkStyles.elevatedButtonTheme(fontFamily),
    drawerTheme: DarkStyles.drawerTheme,
    iconTheme: DarkStyles.iconTheme,
    snackBarTheme: DarkStyles.snackBarTheme,
    // bottomNavigationBarTheme: DarkStyles.bottomNavigationBarTheme,
    // cardTheme: DarkStyles.cardTheme,
  );

  static ThemeData light = ThemeData(
    fontFamily: fontFamily,
    // canvasColor: Colors.green,
    scaffoldBackgroundColor: Pallet.neutral.shade50,
    colorScheme: ColorSchemeProvider.lightFromCorePalette,
    progressIndicatorTheme: LightStyles.progressIndicatorTheme,
    elevatedButtonTheme: LightStyles.elevatedButtonTheme(fontFamily),
    textTheme: LightStyles.textTheme,
    drawerTheme: LightStyles.drawerTheme,
    iconTheme: LightStyles.iconTheme,
    snackBarTheme: LightStyles.snackBarTheme,
  );
}
