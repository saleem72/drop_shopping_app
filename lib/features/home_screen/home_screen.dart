//

import 'package:drop_shopping_app/core/data/helpers/data_provider.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/presentation/widgets/shopping_websites_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
        ],
      ),
    );
  }
}
