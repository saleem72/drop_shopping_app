// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:drop_shopping_app/core/domain/models/cart_item_keys.dart';
import 'package:equatable/equatable.dart';

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
    if (vendor == null) {
      return null;
    }
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
