//

import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:drop_shopping_app/core/presentation/widgets/shopping_product_card.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({
    super.key,
    required this.products,
  });
  final List<DropShoppingProduct> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: context.textTheme.titleLarge,
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 16);
        },
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return ShoppingProductCard(product: product);
        },
      ),
    );
  }
}
