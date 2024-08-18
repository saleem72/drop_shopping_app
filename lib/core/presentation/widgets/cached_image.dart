//

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
    required this.title,
  });
  final String? url;
  final BoxFit? fit;
  final String title;
  @override
  Widget build(BuildContext context) {
    return url == null || url!.isEmpty
        ? Text(
            title,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          )
        : CachedNetworkImage(
            imageUrl: url!,
            errorWidget: (context, url, error) => Icon(
              Icons.error,
              color: context.colorScheme.tertiary,
            ),
            fit: fit,
          );
  }
}
