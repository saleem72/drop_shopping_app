//

import 'package:flutter/material.dart';

import 'sizes.dart';

/// This class hold all the font styles which are used in the app
class FontStyles {
  FontStyles._internal();

  static const String fontFamily = 'Product Sans';

  static const TextStyle headlineLarge = TextStyle(fontSize: FontSizes.large);

  static const TextStyle headlineMedium = TextStyle(fontSize: FontSizes.medium);

  static const TextStyle labelLarge = TextStyle(fontSize: FontSizes.medium);

  static const TextStyle labelMedium = TextStyle(fontSize: FontSizes.small);

  static const TextStyle elevatedButtonTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );
}
