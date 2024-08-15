import 'package:drop_shopping_app/core/styles/colors.dart';
import 'package:drop_shopping_app/core/styles/sizes.dart';
import 'package:drop_shopping_app/core/styles/styles.dart';
import 'package:flutter/material.dart';

class DropShoppingTheme {
  static ThemeData dark = ThemeData(
      canvasColor: Colors.transparent,
      fontFamily: 'Product Sans',
      scaffoldBackgroundColor: DropShoppingColors.darkScaffoldBackground,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: DropShoppingColors.darkSeedColor,
        primary: DropShoppingColors.darkPrimary,
        secondary: DropShoppingColors.darkSecondary,
        tertiary: DropShoppingColors.darkTertiary,
        background: DropShoppingColors.darkBackground,
        surface: DropShoppingColors.darkSurface,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: DropShoppingColors.darkPrimary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 0,
            shadowColor: Colors.transparent,
            foregroundColor: Colors.black,
            textStyle: Styles.elevatedButtonTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.smallSize,
              fontFamily: 'Product Sans',
            )),
      ),
      textTheme: const TextTheme().copyWith(
          headlineLarge: FontStyles.headlineLarge,
          headlineMedium: FontStyles.headlineMedium,
          labelLarge: FontStyles.labelLarge,
          labelMedium: FontStyles.labelMedium,
          displayMedium: FontStyles.labelMedium.copyWith(
            color: Colors.white,
          )),
      drawerTheme: const DrawerThemeData(
        backgroundColor: DropShoppingColors.darkSeedColor,
        surfaceTintColor: Colors.black,
      ),
      iconTheme: const IconThemeData(
        size: IconSizes.mediumIconSize,
        color: DropShoppingColors.darkSecondary,
      ),
      snackBarTheme: SnackBarThemeData(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RadiusSizes.medium),
          topRight: Radius.circular(RadiusSizes.medium),
        )),
        backgroundColor: DropShoppingColors.darkPrimary,
        actionTextColor: Colors.black,
        closeIconColor: Colors.black,
        insetPadding: StylesEdgeInsets.smallSymmetricHorizontal,
        contentTextStyle: FontStyles.labelMedium.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ));

  static ThemeData light = ThemeData(
      canvasColor: Colors.transparent,
      fontFamily: 'Product Sans',
      scaffoldBackgroundColor: DropShoppingColors.lightScaffoldBackground,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: DropShoppingColors.lightSeedColor,
        primary: DropShoppingColors.lightPrimary,
        secondary: DropShoppingColors.lightSecondary,
        tertiary: DropShoppingColors.lightTertiary,
        background: DropShoppingColors.lightBackground,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: DropShoppingColors.lightPrimary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 0,
            foregroundColor: Colors.white,
            padding: StylesEdgeInsets.mediumSymmetricHorizontal,
            shadowColor: Colors.transparent,
            textStyle: Styles.elevatedButtonTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.smallSize,
              fontFamily: 'Product Sans',
            )),
      ),
      textTheme: TextTheme(
          headlineLarge: FontStyles.headlineLarge,
          headlineMedium: FontStyles.headlineMedium,
          labelLarge: FontStyles.labelLarge,
          labelMedium: FontStyles.labelMedium,
          displayMedium: FontStyles.labelMedium.copyWith(
            color: Colors.black,
          )),
      drawerTheme: const DrawerThemeData(
        backgroundColor: DropShoppingColors.lightSeedColor,
        surfaceTintColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
          size: IconSizes.mediumIconSize,
          color: DropShoppingColors.darkSecondary),
      snackBarTheme: SnackBarThemeData(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RadiusSizes.medium),
          topRight: Radius.circular(RadiusSizes.medium),
        )),
        backgroundColor: DropShoppingColors.lightPrimary,
        actionTextColor: Colors.white,
        closeIconColor: Colors.white,
        insetPadding: const EdgeInsets.all(PaddingSizes.xSmallPadding),
        contentTextStyle: FontStyles.labelMedium
            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
      ));
}
