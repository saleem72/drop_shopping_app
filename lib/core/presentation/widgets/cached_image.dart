//

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
  });
  final String? url;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return url == null || url!.isEmpty
        ? const SizedBox.shrink()
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
