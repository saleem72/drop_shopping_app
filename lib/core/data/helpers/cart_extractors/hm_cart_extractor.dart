//

import 'dart:convert';
import 'dart:isolate';

import 'package:drop_shopping_app/core/data/helpers/cart_extractors/cart_extractor.dart';
import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:html/dom.dart' as dom;
import 'package:beautiful_soup_dart/beautiful_soup.dart' as beautiful;

class HMCartExtractor implements CartExtractor {
  @override
  Future<List<DropShoppingProduct>> htmlDecoding(String body) async {
    final products = await Isolate.run<List<DropShoppingProduct>>(() async {
      final content = json.decode(body);

      var html = dom.Document.html(content);

      final titles = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > a > h2')
          .map((e) => e.innerHtml.trim())
          .toList();

      final images = html
          .querySelectorAll('article > a > div > img')
          .map((e) => e.attributes['src'])
          .toList();

      final prices = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > span')
          .map((e) => e)
          .toList();

      final quantities = html
          .querySelectorAll(
              'article > div.Actions-module--actions__24Z1Z > div > div > div > select > option')
          .map((e) => e)
          .toList();

      final urls = html
          .querySelectorAll('article > div.CartItem-module--details__3xy60 > a')
          .map((e) => e.attributes['href'] == null
              ? null
              : 'https://www2.hm.com${e.attributes['href']!}')
          .toList();

      final colors = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(1) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn')
          .map((e) => e.nodes[0].text?.trim())
          .toList();

      final sizes = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn')
          .map((e) => e.nodes[0].text?.trim())
          .toList();

      final products = List.generate(
        titles.length,
        (index) => DropShoppingProduct(
          title: titles[index],
          image: images[index],
          price: prices[index].text,
          quantity: quantities[index].toString(),
          url: urls[index],
          color: colors[index] ?? '',
          size: sizes[index] ?? '',
        ),
      );
      return products;
    });

    return products;
  }

  @override
  Future<List<DropShoppingProduct>> soapDecoding(String body) async {
    final children = await Isolate.run<List<DropShoppingProduct>>(() {
      DropShoppingProduct decodeItem(beautiful.Bs4Element item) {
        final imageTag = item.find('a');
        String? href = imageTag?.attributes['href'];
        if (href != null) {
          href = 'https://www2.hm.com$href';
        }

        final url = href ?? 'no SRC for a';

        final image = imageTag?.find('img')?.attributes['src'] ?? 'no image';

        final firstDiv =
            item.find('div', class_: 'CartItem-module--details__3xy60');
        final productName = firstDiv
                ?.find('h2', class_: 'ProductName-module--productName__TuSF8')
                ?.innerHtml ??
            'No name';
        final price = firstDiv
                ?.find('span', class_: 'CartItemPrice-module--price__3MFAE')
                ?.innerHtml ??
            'no price';

        final details = firstDiv
                ?.find('ul', class_: 'CartItemDetails-module--ul__1FRd2')
                ?.findAll('li') ??
            [];

        String color = '';
        String size = '';
        // List<String> productDetails = [];
        for (final frac in details) {
          final title = frac
              .find('span', class_: 'CartItemDetails-module--title__oBKOp')
              ?.nodes
              .map((element) => element.text)
              .join(' ');

          final value = frac
              .find('span', class_: 'CartItemDetails-module--value__AcUPn')
              ?.nodes[0]
              .text;

          if ((title?.toLowerCase() ?? '').startsWith('colour')) {
            color = value ?? 'no color';
          }

          if ((title?.toLowerCase() ?? '').startsWith('size')) {
            size = value ?? 'no size';
          }
        }

        final product = DropShoppingProduct(
          title: productName,
          image: image,
          price: price,
          quantity: 'un known',
          url: url,
          color: color,
          size: size,
        );

        // final secondDiv1 =
        //     item.find('div', class_: 'Actions-module--actions__24Z1Z');

        // final secondDiv = secondDiv1?.find('select');
        // final attrib = secondDiv?.attributes.entries
        //         .map((entry) => '${entry.key}: ${entry.value}')
        //         .toList() ??
        //     [];
        // final secondDivChildren =
        //     secondDiv?.children ?? <beautiful.Bs4Element>[];
        // final secondDivChildrenValues =
        //     secondDivChildren.map((e) => e.innerHtml).toList();
        // content.add('Second DIV');
        // content.addAll(attrib);

        return product;
      }

      final content = json.decode(body);
      final soup = beautiful.BeautifulSoup(content);

      final list =
          soup.find('section.CartItemsList--wrapper__2s_UW > div > ul');
      final cartItemsList = list?.children ?? <beautiful.Bs4Element>[];

      // CartItem-module--item__2U09S
      List<DropShoppingProduct> children = [];
      for (final item in cartItemsList) {
        final cartItem =
            item.find('article', class_: 'CartItem-module--item__2U09S');
        if (cartItem != null) {
          final cartItemChild = decodeItem(cartItem);
          children.add(cartItemChild);
        }
      }

      return children;
    });

    return children;
  }
}
