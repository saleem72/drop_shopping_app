// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final productsStuffResponse = productsStuffResponseFromJson(jsonString);

import 'dart:convert';

import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';

ProductsStuffResponse productsStuffResponseFromJson(String str) =>
    ProductsStuffResponse.fromJson(json.decode(str));

class ProductsStuffResponse {
  List<String> titles;
  List<String> images;
  List<String> quantities;
  List<String> prices;
  List<String> urls;
  List<String> colors;
  List<String> sizes;

  ProductsStuffResponse({
    required this.titles,
    required this.images,
    required this.quantities,
    required this.prices,
    required this.urls,
    required this.colors,
    required this.sizes,
  });

  factory ProductsStuffResponse.fromJson(Map<String, dynamic> decodedJson) =>
      ProductsStuffResponse(
        titles: decodedJson["titles"] == null
            ? []
            : List<String>.from(decodedJson["titles"].map((x) => x)),
        images: decodedJson["images"] == null
            ? []
            : List<String>.from(decodedJson["images"].map((x) => x)),
        quantities: decodedJson["quantities"] == null
            ? []
            : List<String>.from(decodedJson["quantities"].map((x) => x)),
        prices: decodedJson["prices"] == null
            ? []
            : List<String>.from(decodedJson["prices"].map((x) => x)),
        urls: decodedJson["urls"] == null
            ? []
            : List<String>.from(decodedJson["urls"].map((x) => x)),
        colors: decodedJson["colors"] == null
            ? []
            : List<String>.from(decodedJson["colors"].map((x) => x)),
        sizes: decodedJson["sizes"] == null
            ? []
            : List<String>.from(decodedJson["sizes"].map((x) => x)),
      );

  JSProductsStuff toModel() => JSProductsStuff(
        titles: titles,
        images: images,
        quantities: quantities,
        prices: prices,
        urls: urls,
        colors: colors,
        sizes: sizes,
      );

  @override
  String toString() {
    return 'titles: ${titles.length}, images: ${images.length}, quantities: ${quantities.length},\nprices: ${prices.length}, urls: ${urls.length}, colors: ${colors.length}, sizes: ${sizes.length}';
  }
}

class JSProductsStuff {
  final List<String> titles;
  final List<String> images;
  final List<String> quantities;
  final List<String> prices;
  final List<String> urls;
  final List<String> colors;
  final List<String> sizes;
  JSProductsStuff({
    required this.titles,
    required this.images,
    required this.quantities,
    required this.prices,
    required this.urls,
    required this.colors,
    required this.sizes,
  });

  @override
  String toString() {
    return 'titles: ${titles.length}, images: ${images.length}, quantities: ${quantities.length},\nprices: ${prices.length}, urls: ${urls.length}, colors: ${colors.length}, sizes: ${sizes.length}';
  }

  List<DropShoppingProduct> toProducts() {
    final products = List.generate(
      titles.length,
      (index) => DropShoppingProduct(
        title: titles[index],
        image: images.hasIndex(index) ? images[index] : '',
        price: prices.hasIndex(index) ? prices[index] : '',
        quantity: quantities.hasIndex(index) ? quantities[index] : '',
        url: urls.hasIndex(index) ? urls[index] : '',
        color: colors.hasIndex(index) ? colors[index] : '',
        size: sizes.hasIndex(index) ? sizes[index] : '',
      ),
    );

    return products;
  }
}

extension ListHasIndex on List {
  bool hasIndex(int index) => asMap().containsKey(index);
}
