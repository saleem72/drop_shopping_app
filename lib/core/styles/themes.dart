//

import 'package:drop_shopping_app/core/styles/colors.dart';
import 'package:drop_shopping_app/core/styles/font_styles.dart';
import 'package:drop_shopping_app/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:my_core/theming/color_scheme_provider.dart';

class DropShoppingTheme {
  static ThemeData dark = ThemeData(
    fontFamily: FontStyles.fontFamily,
    // canvasColor: Colors.transparent,
    scaffoldBackgroundColor: DropShoppingColors.darkScaffoldBackground,
    colorScheme: ColorSchemeProvider.darkFromCorePalette,
    textTheme: DarkStyles.textTheme,
    progressIndicatorTheme: DarkStyles.progressIndicatorTheme,
    elevatedButtonTheme: DarkStyles.elevatedButtonTheme,
    drawerTheme: DarkStyles.drawerTheme,
    iconTheme: DarkStyles.iconTheme,
    snackBarTheme: DarkStyles.snackBarTheme,
    // bottomNavigationBarTheme: DarkStyles.bottomNavigationBarTheme,
    // cardTheme: DarkStyles.cardTheme,
  );

  static ThemeData light = ThemeData(
    fontFamily: FontStyles.fontFamily,
    // canvasColor: Colors.green,
    scaffoldBackgroundColor: DropShoppingColors.lightScaffoldBackground,
    colorScheme: ColorSchemeProvider.lightFromCorePalette,
    progressIndicatorTheme: LightStyles.progressIndicatorTheme,
    elevatedButtonTheme: LightStyles.elevatedButtonTheme,
    textTheme: LightStyles.textTheme,
    drawerTheme: LightStyles.drawerTheme,
    iconTheme: LightStyles.iconTheme,
    snackBarTheme: LightStyles.snackBarTheme,
  );
}
