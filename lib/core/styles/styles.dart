import 'package:drop_shopping_app/core/styles/sizes.dart';
import 'package:flutter/material.dart';

class StylesEdgeInsets {
  StylesEdgeInsets._internal();

  static const EdgeInsets xSmallSymmetricHorizontal = EdgeInsets.symmetric(
    horizontal: PaddingSizes.xSmallPadding,
  );
  static const EdgeInsets smallSymmetricHorizontal = EdgeInsets.symmetric(
    horizontal: PaddingSizes.smallPadding,
  );
  static const EdgeInsets mediumSymmetricHorizontal = EdgeInsets.symmetric(
    horizontal: PaddingSizes.mediumPadding,
  );

  static const EdgeInsets largeSymmetricHorizontal = EdgeInsets.symmetric(
    horizontal: PaddingSizes.largePadding,
  );

  static const EdgeInsets xLargeSymmetricHorizontal = EdgeInsets.symmetric(
    horizontal: PaddingSizes.xLargePadding,
  );
  static const EdgeInsets xxLargeSymmetricHorizontal = EdgeInsets.symmetric(
    horizontal: PaddingSizes.xxLargePadding,
  );
}

class StylesVGap {
  StylesVGap._internal();
  static const SizedBox xxSmall = SizedBox(height: GapSizes.xxSmallGap);
  static const SizedBox xSmall = SizedBox(height: GapSizes.xSmallGap);
  static const SizedBox medium = SizedBox(height: GapSizes.mediumGap);
  static const SizedBox large = SizedBox(height: GapSizes.largeGap);
  static const SizedBox xLarge = SizedBox(height: GapSizes.xLargeGap);
  static const SizedBox xxLarge = SizedBox(height: GapSizes.xxLargeGap);
  static const SizedBox xxxLarge = SizedBox(height: GapSizes.xxxLargeGap);
}

class StylesHGap {
  StylesHGap._internal();
  static const SizedBox xxSmall = SizedBox(width: GapSizes.xxSmallGap);
  static const SizedBox xSmall = SizedBox(width: GapSizes.xSmallGap);
  static const SizedBox medium = SizedBox(width: GapSizes.mediumGap);
  static const SizedBox large = SizedBox(width: GapSizes.largeGap);
  static const SizedBox xLarge = SizedBox(width: GapSizes.xLargeGap);
  static const SizedBox xxLarge = SizedBox(width: GapSizes.xxLargeGap);
  static const SizedBox xxxLarge = SizedBox(width: GapSizes.xxxLargeGap);
}

class Styles {
  Styles._internal();

  static const TextStyle elevatedButtonTextStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
}

class FontStyles {
  FontStyles._internal();

  static const TextStyle headlineLarge =
      TextStyle(fontSize: FontSizes.largeSize);

  static const TextStyle headlineMedium =
      TextStyle(fontSize: FontSizes.mediumSize);

  static const TextStyle labelLarge = TextStyle(fontSize: FontSizes.mediumSize);

  static const TextStyle labelMedium = TextStyle(fontSize: FontSizes.smallSize);
}

class StylesBorderRadius {
  StylesBorderRadius._internal();

  /// = 6
  static final BorderRadius xSmall = BorderRadius.circular(RadiusSizes.xSmall);

  /// = 8
  static final BorderRadius small = BorderRadius.circular(RadiusSizes.small);

  /// = 12
  static final BorderRadius medium = BorderRadius.circular(RadiusSizes.medium);

  /// = 16
  static final BorderRadius large = BorderRadius.circular(RadiusSizes.large);

  /// = 24
  static final BorderRadius xLarge = BorderRadius.circular(RadiusSizes.xLarge);
}
