//

import 'package:drop_shopping_app/core/domain/models/cart_item_keys.dart';

class HtmlKeysProvider {
  final List<CartItemKeyDetails> hmCartKeys = [
    CartItemKeyDetails(
      title: 'url',
      key: 'article > div.CartItem-module--details__3xy60 > a',
      attribute: 'href',
      prefix: 'https://www2.hm.com',
    ),
    CartItemKeyDetails(
      title: 'image',
      key: 'article > a > div > img',
      attribute: 'src',
    ),
    CartItemKeyDetails(
      title: 'title',
      key: 'article > div.CartItem-module--details__3xy60 > a > h2',
      attribute: null,
    ),
    CartItemKeyDetails(
        title: 'price',
        key: 'article > div.CartItem-module--details__3xy60 > span',
        attribute: null),
    CartItemKeyDetails(
      title: 'color',
      key:
          'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(1) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn',
      attribute: null,
    ),
    CartItemKeyDetails(
      title: 'size',
      key:
          'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn',
      attribute: null,
    ),
    // CartItemKeyDetails(
    //   title: 'quantity',
    //   key:
    //       'article > div.Actions-module--actions__24Z1Z > div > div > div > select',
    //   attribute: null,
    // ),

    // #nav-mini-cart > span:nth-child(3)
    CartItemKeyDetails(
      title: 'quantity',
      key: 'nav-mini-cart > span',
      attribute: null,
      // innerChild: InnerChild(
      //   className: "aria-hidden",
      //   classValue: "true",
      // ),
    ),
  ];

  final List<CartItemKeyDetails> adidasCartKeys = [
    CartItemKeyDetails(
      title: 'url',
      key: 'div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a',
      attribute: 'href',
      prefix: 'https://www.adidas.com/',
    ),
    CartItemKeyDetails(
      title: 'image',
      key:
          'div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img',
      attribute: 'src',
    ),
    CartItemKeyDetails(
      title: 'title',
      key: 'div.line-item__details___HibzD > div > div > div > a > span',
      attribute: null,
    ),
    CartItemKeyDetails(
      title: 'price',
      key:
          'div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div',
      attribute: null,
    ),
    CartItemKeyDetails(
      title: 'color',
      key: 'div.line-item__details___HibzD > div > div > div > span',
      attribute: null,
    ),
    CartItemKeyDetails(
      title: 'size',
      key:
          'div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div > div > div.line-item__attribute___NdmJb > span',
      attribute: null,
      innerChild: InnerChild(
        className: 'data-auto-id',
        classValue: 'cart-line-item-attribute-size',
      ),
    ),
  ];

  final List<CartItemKeyDetails> pumaCartKeys = [
    CartItemKeyDetails(
      title: 'url',
      key: 'ol > li > div > div > div > div > div > a',
      attribute: 'href',
      prefix: 'https://uk.puma.com',
    ),
    CartItemKeyDetails(
      title: 'image',
      key: 'div > div > div > div > div > a > div > img',
      attribute: 'src',
    ),
    CartItemKeyDetails(
      title: 'title',
      key: 'div > div > div > div > div > div > div.space-y-3 > a > h3',
      attribute: null,
    ),
    CartItemKeyDetails(
      title: 'price',
      key: 'div > div > div > div > div > div > div > p > span',
      attribute: null,
      innerChild: InnerChild(
        className: "data-test-id",
        classValue: "item-price",
      ),
    ),
    CartItemKeyDetails(
      title: 'color',
      key: 'div.space-y-3 > div > div > p > span',
      attribute: null,
      innerChild: InnerChild(
        className: "data-test-id",
        classValue: "color",
      ),
    ),
    CartItemKeyDetails(
      title: 'size',
      key: 'div.space-y-3 > div > div > p > span',
      attribute: null,
      innerChild: InnerChild(
        className: "data-test-id",
        classValue: "size",
      ),
    ),
  ];

  final List<CartItemKeyDetails> nikeCartKeys = [
    CartItemKeyDetails(
      title: 'url',
      key: 'div.cart-item > div > figure > a',
      attribute: 'href',
    ),

    CartItemKeyDetails(
      title: 'image',
      key: 'div.cart-item > div > figure > a > picture > img',
      attribute: 'src',
    ),

    // #maincontent > div.css-1efyhwg.e10c8ipm0 > div.css-1k22aut.e10c8ipm1 > div.css-8j20tp.e10c8ipm2 > div.css-1xvlvuc.e10c8ipm5 > div:nth-child(1) > div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > a > h2
    CartItemKeyDetails(
      title: 'title',
      key:
          'div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > a > h2',
      attribute: null,
    ),

    // #maincontent > div.css-1efyhwg.e10c8ipm0 > div.css-1k22aut.e10c8ipm1 > div.css-8j20tp.e10c8ipm2 > div.css-1xvlvuc.e10c8ipm5 > div:nth-child(1) > div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-q2xuk9.ezci20q0 > p > span > span > span
    CartItemKeyDetails(
      title: 'price',
      key:
          'div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-q2xuk9.ezci20q0 > p > span > span > span',
      attribute: null,
      onlyText: true,
    ),

    // body > div:nth-child(12) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > main:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(4) > div:nth-child(1) > div:nth-child(2) > select:nth-child(2)

    // CartItemKeyDetails(
    //   title: 'color',
    //   key: 'div.space-y-3 > div > div > p > span',
    //   attribute: null,
    //   innerChild: InnerChild(
    //     className: "data-test-id",
    //     classValue: "color",
    //   ),
    // ),
    // CartItemKeyDetails(
    //   title: 'size',
    //   key: 'div.space-y-3 > div > div > p > span',
    //   attribute: null,
    //   innerChild: InnerChild(
    //     className: "data-test-id",
    //     classValue: "size",
    //   ),
    // ),
  ];
}
