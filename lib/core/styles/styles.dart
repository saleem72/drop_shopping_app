//

import 'package:drop_shopping_app/core/styles/colors.dart';
import 'package:drop_shopping_app/core/styles/styled.dart';
import 'package:flutter/material.dart';
import 'package:my_core/theming/pallet.dart';

import 'font_styles.dart';
import 'sizes.dart';

class DarkStyles {
  DarkStyles._internal();

  static final colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: DropShoppingColors.darkSeedColor,
    primary: DropShoppingColors.darkPrimary,
    secondary: DropShoppingColors.darkSecondary,
    tertiary: DropShoppingColors.darkTertiary,
    background: DropShoppingColors.darkBackground,
    surface: DropShoppingColors.darkSurface,
  );

  static const ProgressIndicatorThemeData progressIndicatorTheme =
      ProgressIndicatorThemeData(
    color: DropShoppingColors.darkPrimary,
  );

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.black,
      textStyle: FontStyles.elevatedButtonTextStyle.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.small,
        fontFamily: 'Product Sans',
      ),
    ),
  );

  static TextTheme textTheme = const TextTheme()
      .copyWith(
        headlineLarge: FontStyles.headlineLarge,
        headlineMedium: FontStyles.headlineMedium,
        labelLarge: FontStyles.labelLarge,
        labelMedium: FontStyles.labelMedium,
        displayMedium: FontStyles.labelMedium.copyWith(
          color: Colors.white,
        ),
      )
      .apply(
        displayColor: Pallet.primary.shade500,
        bodyColor: colorScheme.secondary,
      );

  static DrawerThemeData drawerTheme = const DrawerThemeData(
    backgroundColor: DropShoppingColors.darkSeedColor,
    surfaceTintColor: Colors.black,
  );

  static IconThemeData iconTheme = const IconThemeData(
    size: IconSizes.medium,
    color: DropShoppingColors.darkSecondary,
  );

  static SnackBarThemeData snackBarTheme = SnackBarThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(RadiusSizes.medium),
        topRight: Radius.circular(RadiusSizes.medium),
      ),
    ),
    backgroundColor: DropShoppingColors.darkPrimary,
    actionTextColor: Colors.black,
    closeIconColor: Colors.black,
    insetPadding: const EdgeInsets.all(PaddingSizes.xSmall),
    contentTextStyle: FontStyles.labelMedium.copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );

  static final bottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: Pallet.secondary.shade700,
  );

  static const cardTheme = CardTheme(
    color: Pallet.secondary,
    shadowColor: Colors.white24,
  );
}

class LightStyles {
  LightStyles._internal();

  static ColorScheme colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: DropShoppingColors.lightSeedColor,
    primary: DropShoppingColors.lightPrimary,
    secondary: DropShoppingColors.lightSecondary,
    tertiary: DropShoppingColors.lightTertiary,
    background: DropShoppingColors.lightBackground,
  );

  static TextTheme textTheme = TextTheme(
    headlineLarge: FontStyles.headlineLarge,
    headlineMedium: FontStyles.headlineMedium,
    labelLarge: FontStyles.labelLarge,
    labelMedium: FontStyles.labelMedium,
    displayMedium: FontStyles.labelMedium.copyWith(
      color: Colors.black,
    ),
  ).apply(
    displayColor: DropShoppingColors.lightPrimary,
  );

  static const ProgressIndicatorThemeData progressIndicatorTheme =
      ProgressIndicatorThemeData(
    color: DropShoppingColors.lightPrimary,
  );

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      elevation: 0,
      foregroundColor: Colors.white,
      padding: StylesEdgeInsets.mediumSymmetricHorizontal,
      shadowColor: Colors.transparent,
      textStyle: FontStyles.elevatedButtonTextStyle.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.small,
        fontFamily: 'Product Sans',
      ),
    ),
  );

  static const drawerTheme = DrawerThemeData(
    backgroundColor: DropShoppingColors.lightSeedColor,
    surfaceTintColor: Colors.white,
  );

  static const iconTheme = IconThemeData(
    size: IconSizes.medium,
    color: DropShoppingColors.darkSecondary,
  );

  static final snackBarTheme = SnackBarThemeData(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(RadiusSizes.medium),
      topRight: Radius.circular(RadiusSizes.medium),
    )),
    backgroundColor: DropShoppingColors.lightPrimary,
    actionTextColor: Colors.white,
    closeIconColor: Colors.white,
    insetPadding: const EdgeInsets.all(PaddingSizes.xSmall),
    contentTextStyle: FontStyles.labelMedium.copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
