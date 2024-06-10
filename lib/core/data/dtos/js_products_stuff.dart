// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final productsStuffResponse = productsStuffResponseFromJson(jsonString);

import 'dart:convert';

ProductsStuffResponse productsStuffResponseFromJson(String str) =>
    ProductsStuffResponse.fromJson(json.decode(str));

String productsStuffResponseToJson(ProductsStuffResponse data) =>
    json.encode(data.toJson());

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

  factory ProductsStuffResponse.fromJson(Map<String, dynamic> json) =>
      ProductsStuffResponse(
        titles: List<String>.from(json["titles"].map((x) => x)),
        images: List<String>.from(json["images"].map((x) => x)),
        quantities: List<String>.from(json["quantities"].map((x) => x)),
        prices: json["prices"] == null
            ? []
            : List<String>.from(json["prices"].map((x) => x)),
        urls: json["urls"] == null
            ? []
            : List<String>.from(json["urls"].map((x) => x)),
        colors: json["colors"] == null
            ? []
            : List<String>.from(json["colors"].map((x) => x)),
        sizes: json["sizes"] == null
            ? []
            : List<String>.from(json["sizes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "images": List<dynamic>.from(images.map((x) => x)),
        "quantities": List<dynamic>.from(quantities.map((x) => x)),
      };

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
}
