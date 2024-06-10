//

class InnerChild {
  final String className;
  final String classValue;
  InnerChild({
    required this.className,
    required this.classValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
      'classValue': classValue,
    };
  }

  factory InnerChild.fromMap(Map<String, dynamic> map) {
    return InnerChild(
      className: map['className'] as String,
      classValue: map['classValue'] as String,
    );
  }
}

class CartItemKeyDetails {
  final String title;
  final String key;
  final String? attribute;
  final String? prefix;
  final InnerChild? innerChild;
  final bool onlyText;
  CartItemKeyDetails({
    required this.title,
    required this.key,
    required this.attribute,
    this.prefix,
    this.innerChild,
    this.onlyText = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'key': key,
      'attribute': attribute,
      'prefix': prefix,
      'innerChild': innerChild?.toMap(),
    };
  }

  factory CartItemKeyDetails.fromMap(Map<String, dynamic> map) {
    return CartItemKeyDetails(
      title: map['title'] as String,
      key: map['key'] as String,
      attribute: map['attribute'] != null ? map['attribute'] as String : null,
      prefix: map['prefix'] != null ? map['prefix'] as String : null,
      innerChild: map['innerChild'] != null
          ? InnerChild.fromMap(map['innerChild'] as Map<String, dynamic>)
          : null,
      onlyText: map['onlyText'] ?? false,
    );
  }
}
