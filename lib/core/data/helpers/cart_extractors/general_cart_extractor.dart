// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'dart:convert' as convert;
import 'dart:developer' as developer;
import 'dart:isolate' as isolate;

import 'package:beautiful_soup_dart/beautiful_soup.dart' as beautiful;
import 'package:chaleno/chaleno.dart';
import 'package:collection/collection.dart';
import 'package:html/dom.dart' as dom;

import 'package:drop_shopping_app/core/domain/models/cart_item_keys.dart';
import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';

class GeneralCartExtractor {
  GeneralCartExtractor._internal();

  static Future<List<Map<String, String?>>> htmlDecoding({
    required List<CartItemKeyDetails> keysList,
    required String body,
  }) async {
    if (keysList.isEmpty) {
      return [];
    }
    final products =
        await isolate.Isolate.run<List<Map<String, String?>>>(() async {
      String? decodeElement(CartItemKeyDetails key, dom.Element element) {
        if (key.onlyText && element.nodes.isNotEmpty) {
          final temp =
              element.nodes.firstWhereOrNull((element) => element is dom.Text);
          return temp?.text;
        }
        String? value = key.attribute == null
            ? element.innerHtml.trim()
            : element.attributes[key.attribute];

        if (key.prefix != null && value != null) {
          value = key.prefix! + value;
        }

        return value;
      }

      List<Map<String, String?>> solveLists(List<List<String?>> values) {
        final List<Map<String, String?>> products = [];
        for (var j = 0; j < values.first.length; j++) {
          final Map<String, String?> map = {};
          for (var i = 0; i < keysList.length; i++) {
            final key = keysList[i].title;
            if (values[i].asMap().containsKey(j)) {
              final value = values[i][j];
              map[key] = value;
            } else {
              map[key] = null;
            }
          }

          products.add(map);
        }
        return products;
      }

      final content = convert.json.decode(body);
      var html = dom.Document.html(content);

      List<List<String?>> values = [];

      for (final key in keysList) {
        //
        List<String?> titles = [];
        if (key.innerChild != null) {
          titles = html
              .querySelectorAll(key.key)
              .where((element) =>
                  element.attributes[key.innerChild!.className] ==
                  key.innerChild!.classValue)
              .map((e) => decodeElement(key, e))
              .toList();
        } else {
          titles = html
              .querySelectorAll(key.key)
              .map((e) => decodeElement(key, e))
              .toList();
        }

        values.add(titles);
      }

      if (values.isEmpty) {
        return [];
      }

      try {
        final products = solveLists(values);
        return products;
      } catch (e) {
        developer.log(e.toString(), name: 'GeneralCartExtractor', error: e);
        return [];
      }
    });

    return products;
  }

  static Future<List<SomeElement>> someWebsite(String body) async {
    final children = await isolate.Isolate.run<List<SomeElement>>(() {
      SomeElement decodeItem(beautiful.Bs4Element item) {
        final itemType = item.runtimeType;
        final options = item.findAll('option');
        List<String?> values = [];
        for (final option in options) {
          final aaa = option.getAttrValue('value');
          values.add(aaa);
        }

        // item.element.
        // item.bs4.
        final attributes =
            item.attributes.entries.map((e) => '${e.key}: ${e.value}').toList();
        final children = item.children
            .map((e) => '${e.runtimeType} ${e.innerHtml}')
            .toList();
        final nodes = item.nodes
            .map((element) => (element.attributeValueSpans ?? {})
                .map((key, value) => MapEntry(key, value))
                .entries
                .map((e) => '${e.key}: ${e.value}')
                .toList()
                .join('\n'))
            .toList();
        final element = SomeElement(
          attributes: attributes,
          children: children,
          nodes: nodes,
        );

        // item.nodes.map((element) => element)
        // .where((element) => element.attributeValueSpans)

        return element;
      }

      final content = convert.json.decode(body);
      final soup = beautiful.BeautifulSoup(content);
      // var html = dom.Document.html(content);
      final allLists = soup.findAll('select');
      final aaa = soup.find('option[selected="selected"]');
      List<SomeElement> products = [];
      for (final item in allLists) {
        final element = decodeItem(item);
        products.add(element);
      }

      return products;
    });

    return children;
  }

  static Future<String?> chaleno(String url) async {
    final children = await isolate.Isolate.run<String?>(() async {
      var parser = await Chaleno().load(url);
      final image = parser?.getElementsByTagName('select')?.first.text;
      return image;
    });

    return children;
  }
}

class SomeElement {
  final List<String> attributes;
  final List<String> children;
  final List<String> nodes;
  SomeElement({
    required this.attributes,
    required this.children,
    required this.nodes,
  });
}
