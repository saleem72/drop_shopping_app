// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:my_core/extensions/string_extension.dart';

//

class DropShoppingProductProperty {
  final String prop;
  final String value;
  DropShoppingProductProperty({
    required this.prop,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prop': prop,
      'value': value,
    };
  }

  factory DropShoppingProductProperty.fromMap(Map<String, dynamic> map) {
    return DropShoppingProductProperty(
      prop: map['prop'] as String,
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DropShoppingProductProperty.fromJson(String source) {
    String removeExtra(String source) {
      final reg = RegExp(r"\\n");
      String s = source.replaceAll(reg, '');
      s = s.replaceAll('\n', '');
      return s;
    }

    return DropShoppingProductProperty.fromMap(
        json.decode(removeExtra(source)) as Map<String, dynamic>);
  }
}

class DropShoppingProduct {
  final String title;
  final String? image;
  final String price;
  final String quantity;
  final String? url;
  final String color;
  final String size;
  final String? weight;
  final String? dimensions;
  final double shippingCost;

  final List<DropShoppingProductProperty> properties;
  const DropShoppingProduct({
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
    required this.url,
    required this.color,
    required this.size,
    required this.properties,
    this.dimensions,
    this.weight,
    required this.shippingCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'price': price,
      'quantity': quantity,
      'url': url,
      'color': color,
      'size': size,
    };
  }

  factory DropShoppingProduct.fromMap(Map<String, dynamic> map) {
    final prodProperties = map['properties'] != null
        ? List<DropShoppingProductProperty>.from(map['properties']
            .map((x) => DropShoppingProductProperty.fromJson(x)))
        : <DropShoppingProductProperty>[];

    final prodDimensions = prodProperties.firstWhereOrNull((element) =>
        element.prop.toUpperCase().startsWith('item dimensions'.toUpperCase()));

    final prodWeight = prodProperties.firstWhereOrNull(
        (element) => element.prop.toUpperCase() == 'item weight'.toUpperCase());
    return DropShoppingProduct(
      title: map['title'] ?? 'no',
      price: map['price'] ?? 'no',
      quantity: '1',
      color: map['color'] ?? 'no',
      size: map['size'] ?? 'no',
      image: map['image'] != null ? map['image'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      properties: prodProperties,
      weight: prodWeight?.value,
      dimensions: prodDimensions?.value,
      shippingCost: 7000,
    );
  }

  static List<DropShoppingProduct> fromMapList(List<dynamic> list) {
    final result = list
        .map((map) {
          final title = map['title'];
          final price = map['price'];
          // if (title == null ||
          //     (title as String).isEmpty ||
          //     title.isValidCurrency()) {
          //   return null;
          // }
          // if (price == null || (price as String).isEmpty) {
          //   return null;
          // }
          return DropShoppingProduct(
            title: title,
            price: price,
            quantity: '1',
            color: map['color'] ?? 'no',
            size: map['size'] ?? 'no',
            image: map['image'] != null ? map['image'] as String : null,
            url: map['url'] != null ? map['url'] as String : null,
            properties: [],
            weight: null,
            dimensions: null,
            shippingCost: 7000,
          );
        })
        .whereType<DropShoppingProduct>()
        .toList();

    return result;
  }

  String toJson() => json.encode(toMap());

  factory DropShoppingProduct.fromJson(String source) {
    return DropShoppingProduct.fromMap(
        json.decode(source) as Map<String, dynamic>);
  }
}

extension StringDimensions on String {
  String toDimensions() {
    String result = replaceAll('"', '');
    final reg = RegExp(r"[a-zA-Z]");
    result = result.replaceAll(reg, '');
    result = result.replaceAll('  ', ' ');
    return result;
  }

  double volume() {
    final str = toDimensions();
    final numbers = str.split(' ');
    if (numbers.length != 3) {
      return 0;
    }

    final depth = double.tryParse(numbers[0]);
    final width = double.tryParse(numbers[1]);
    final height = double.tryParse(numbers[2]);

    if (depth == null || width == null || height == null) {
      return 0;
    }

    return depth * width * height;
  }
}
