//

import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:my_core/theming/sizes.dart';
import 'package:my_core/theming/styled.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';

import 'shopping_website_icon.dart';

class ShoppingWebsitesSection extends StatelessWidget {
  const ShoppingWebsitesSection({
    super.key,
    required this.sites,
  });
  final List<ShoppingWebsite> sites;
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return sites.isNotEmpty
        ? Column(
            children: [
              Padding(
                padding: StylesEdgeInsets.mediumSymmetricHorizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shopping Websites',
                      style: textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              StylesVGap.xSmall,
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: GapSizes.medium,
                    mainAxisSpacing: GapSizes.medium,
                  ),
                  itemCount: sites.length,
                  itemBuilder: (BuildContext context, int index) {
                    final website = sites[index];
                    return ShoppingWebsiteIcon(website: website);
                  },
                ),
                // child: ListView.separated(
                //   scrollDirection: Axis.horizontal,
                //   padding: const EdgeInsets.symmetric(horizontal: 16),
                //   itemCount: sites.length,
                //   separatorBuilder: (BuildContext context, int index) {
                //     return const SizedBox(width: 12);
                //   },
                //   itemBuilder: (BuildContext context, int index) {
                //     final site = sites[index];
                //     return ShoppingWebsiteIcon(
                //       website: site,
                //     );
                //   },
                // ),
              ),
            ],
          )
        : const SizedBox.shrink();
  }
}
