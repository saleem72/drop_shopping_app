//

import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

class SingleDropShoppingProductScreen extends StatelessWidget {
  const SingleDropShoppingProductScreen({
    super.key,
    required this.product,
  });
  final DropShoppingProduct product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop Shopping product'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            product.image != null && product.image!.isNotEmpty
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(product.image!),
                      const SizedBox(height: 16),
                    ],
                  )
                : const SizedBox.shrink(),
            Text(product.title),
            const SizedBox(height: 16),
            ProductGenericPropertyTile(
              prop: 'Weight',
              value: product.weight ?? 'No weight',
            ),
            ProductGenericPropertyTile(
              prop: 'Dimensions',
              value:
                  '${product.dimensions ?? 'No weight'}, volume: ${product.dimensions?.volume()}',
            ),
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         ...product.properties
            //             .map((e) => ProductPropertyTile(property: e)),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class ProductPropertyTile extends StatelessWidget {
  const ProductPropertyTile({
    super.key,
    required this.property,
  });
  final DropShoppingProductProperty property;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          property.prop,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.primary,
          ),
        ),
        Text(property.value),
        const SizedBox(height: 8),
      ],
    );
  }
}

class ProductGenericPropertyTile extends StatelessWidget {
  const ProductGenericPropertyTile({
    super.key,
    required this.prop,
    required this.value,
  });
  final String prop;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          prop,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.primary,
          ),
        ),
        Text(value),
        const SizedBox(height: 8),
      ],
    );
  }
}
