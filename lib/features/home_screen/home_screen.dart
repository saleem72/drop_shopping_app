//

import 'package:drop_shopping_app/core/data/helpers/data_provider.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/presentation/widgets/shopping_websites_section.dart';
import 'package:drop_shopping_app/core/styles/styled.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';
import 'package:my_core/theming/pallet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.secondary),
        title: Text(
          'Home',
          style: context.textTheme.labelLarge?.copyWith(
            color: Pallet.primary.shade500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // backgroundColor: context.,
      ),
      body: Column(
        children: [
          Expanded(
            child: ShoppingWebsitesSection(
              sites:
                  DataProvider.websites.whereType<ShoppingWebsite>().toList(),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
