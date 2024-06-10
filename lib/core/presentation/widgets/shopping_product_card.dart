//

import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';
import 'package:url_launcher/url_launcher.dart';

class ShoppingProductCard extends StatelessWidget {
  const ShoppingProductCard({
    super.key,
    required this.product,
  });

  final DropShoppingProduct product;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 180,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                        image: product.image == null
                            ? null
                            : DecorationImage(
                                image: NetworkImage(product.image!),
                                fit: BoxFit.cover)),
                  ),
                  const SizedBox(height: 8),
                  FilledButton.tonal(
                    onPressed: () {
                      if (product.url == null) {
                        return;
                      }
                      _launchUrl(product.url!);
                    },
                    child: const Text('Webpage'),
                  )
                ],
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        product.title,
                        style: context.textTheme.titleMedium?.copyWith(
                            // fontWeight: FontWeight.w400,
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ValueWithLabelInRow(label: 'Price', value: product.price),
                    ValueWithLabelInRow(label: 'Color', value: product.color),
                    ValueWithLabelInRow(label: 'Size', value: product.size),
                    ValueWithLabelInRow(
                        label: 'Quantity', value: product.quantity),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}

class ValueWithLabelInRow extends StatelessWidget {
  const ValueWithLabelInRow({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$label: ',
          style: context.textTheme.titleSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
