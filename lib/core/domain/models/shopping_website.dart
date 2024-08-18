// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:equatable/equatable.dart';

import 'package:drop_shopping_app/core/domain/models/cart_item_keys.dart';

import 'shopping_website_vendor.dart';

class ShoppingWebsite extends Equatable {
  final int id;
  final String name;
  final String url;
  final String? image;
  final ShoppingWebsiteVendor vendor;
  final List<CartItemKeyDetails> keys;
  final String? script;
  const ShoppingWebsite({
    required this.id,
    required this.name,
    required this.url,
    required this.image,
    required this.vendor,
    required this.keys,
    this.script,
  });

  @override
  List<Object?> get props => [id, url, image];

  static ShoppingWebsite? fromJson(Map<String, dynamic> map) {
    final vendor = ShoppingWebsiteVendor.fromString(map['vendor']);
    // if (vendor == null) {
    //   return null;
    // }
    return ShoppingWebsite(
      id: map['id'],
      name: map['name'],
      url: map['url'],
      image: map['image'],
      vendor: vendor,
      keys: map['keys'] == null
          ? []
          : List<CartItemKeyDetails>.from(
              map['keys'].map((e) => CartItemKeyDetails.fromMap(e))),
      script: map['script'],
    );
  }
}

class ShoppingWebsiteScriptDTO {
  String? titles;
  String? quantities;
  String? images;
  String? prices;
  String? urls;
  String? colors;
  String? sizes;

  ShoppingWebsiteScriptDTO({
    this.titles,
    this.quantities,
    this.images,
    this.prices,
    this.urls,
    this.colors,
    this.sizes,
  });

  factory ShoppingWebsiteScriptDTO.fromMap(Map<String, dynamic> map) {
    return ShoppingWebsiteScriptDTO(
      titles: map['titles'] != null ? map['titles'] as String : null,
      quantities:
          map['quantities'] != null ? map['quantities'] as String : null,
      images: map['images'] != null ? map['images'] as String : null,
      prices: map['prices'] != null ? map['prices'] as String : null,
      urls: map['urls'] != null ? map['urls'] as String : null,
      colors: map['colors'] != null ? map['colors'] as String : null,
      sizes: map['sizes'] != null ? map['sizes'] as String : null,
    );
  }

  ShoppingWebsiteScript toModel() => ShoppingWebsiteScript(
        titles: titles ?? '[]',
        quantities: quantities ?? '[]',
        images: images ?? '[]',
        prices: prices ?? '[]',
        urls: urls ?? '[]',
        colors: colors ?? '[]',
        sizes: sizes ?? '[]',
      );
}

class ShoppingWebsiteScript {
  final String titles;
  final String quantities;
  final String images;
  final String prices;
  final String urls;
  final String colors;
  final String sizes;
  ShoppingWebsiteScript({
    required this.titles,
    required this.quantities,
    required this.images,
    required this.prices,
    required this.urls,
    required this.colors,
    required this.sizes,
  });

  String get script => '''

function getTitles() {
  return $titles
}

function getQuantities() {
  return $quantities
}

function getImages() {
  return $images
}

function getPrices() {
  return $prices
}

function getUrls() {
  return $urls
}

function getColors() {
  return $colors
}

function getSizes() {
  return $sizes
}

function toObject(){

    var dict = {
        titles: [],
        images: [],
        prices: [],
        urls: [],
        colors: [],
        sizes: [],
        quantities: []
    };

    dict.titles.push.apply(dict.titles, getTitles());
    dict.images.push.apply(dict.images, getImages());
    dict.prices.push.apply(dict.prices, getPrices());
    dict.urls.push.apply(dict.urls, getUrls());
    dict.colors.push.apply(dict.colors, getColors());
    dict.sizes.push.apply(dict.sizes, getSizes());
    dict.quantities.push.apply(dict.quantities, getQuantities());
    return dict;

}
toObject();
''';
}
