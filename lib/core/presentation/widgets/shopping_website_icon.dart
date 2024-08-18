//

import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/styles/sizes.dart';
import 'package:drop_shopping_app/features/app_web_view/app_web_view.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

import 'cached_image.dart';

class ShoppingWebsiteIcon extends StatelessWidget {
  const ShoppingWebsiteIcon({
    super.key,
    required this.website,
    this.size = 90,
  });
  final ShoppingWebsite website;
  final double size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.navigator.push(
          MaterialPageRoute(builder: (_) => AppWebView(website: website))),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          borderRadius: BorderRadius.circular(RadiusSizes.small),
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedImage(title: website.name, url: website.image),
          ),
        ),
      ),
    );
  }
}
