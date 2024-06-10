// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

//

class DropShoppingProduct {
  final String title;
  final String? image;
  final String price;
  final String quantity;
  final String? url;
  final String color;
  final String size;
  const DropShoppingProduct({
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
    required this.url,
    required this.color,
    required this.size,
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
    return DropShoppingProduct(
      title: map['title'] ?? 'no',
      price: map['price'] ?? 'no',
      quantity: '1',
      color: map['color'] ?? 'no',
      size: map['size'] ?? 'no',
      image: map['image'] != null ? map['image'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DropShoppingProduct.fromJson(String source) =>
      DropShoppingProduct.fromMap(json.decode(source) as Map<String, dynamic>);
}
