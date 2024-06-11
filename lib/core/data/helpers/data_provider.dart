//

import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website_vendor.dart';

class DataProvider {
  DataProvider._internal();

  static final List<ShoppingWebsite?> websites = [
    // - H&M
    ShoppingWebsite.fromJson(const {
      "id": 1,
      "name": "H&M",
      "url": "https://www2.hm.com/en_gb/index.html",
      "image": "https://s3.we-order.com/recourses/images/1696756504591.jpeg",
      "is_free": 1,
      "status": 1,
      "vendor": "hm",
      "keys": [
        {
          "title": 'url',
          "key": 'article > div.CartItem-module--details__3xy60 > a',
          "attribute": 'href',
          "prefix": 'https://www2.hm.com'
        },
        {
          "title": 'image',
          "key": 'article > a > div > img',
          "attribute": 'src'
        },
        {
          "title": 'title',
          "key": 'article > div.CartItem-module--details__3xy60 > a > h2',
          "attribute": null
        },
        {
          "title": 'price',
          "key": 'article > div.CartItem-module--details__3xy60 > span',
          "attribute": null
        },
        {
          "title": 'color',
          "key":
              'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(1) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn',
          "attribute": null
        },
        {
          "title": 'size',
          "key":
              'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn',
          "attribute": null
        },
        {
          "title": 'quantity',
          "key":
              'article > div.Actions-module--actions__24Z1Z > div > div > div > select',
          "attribute": null
        },
      ],
      "script": '''

function getQuantities() {
  return Array.from(document.querySelectorAll("article > div.Actions-module--actions__24Z1Z > div > div > div > select")).map((x) => x.value);
}

function getImages() {
  return Array.from(document.querySelectorAll("article > a > div > img")).map((x)=>x.src);
}

function getTitles() {
  return Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > a > h2")).map((x)=>x.textContent);
}

function getPrices() {
  return Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > span")).map((x)=>x.textContent);
}

function getUrls() {
  return Array.from(document.querySelectorAll("article > div.CartItem-module--details__3xy60 > a")).map((x)=>x.href);
}

function getColors() {
  return Array.from(document.querySelectorAll("#sidebar-sticky-boundary > section.CartItemsList--wrapper__2s_UW > div > ul > li > article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn")).map((x)=> x.childNodes[0].textContent);
}

function getSizes() {
  return Array.from(document.querySelectorAll("#sidebar-sticky-boundary > section.CartItemsList--wrapper__2s_UW > div > ul > li > article > div.CartItem-module--details__3xy60 > ul > li:nth-child(3) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn")).map((x)=> x.childNodes[0].textContent);
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
''',
    }),
    // - adidas
    ShoppingWebsite.fromJson(const {
      "id": 2,
      "name": "adidas",
      "url": "https://www.adidas.co.uk/",
      "image":
          "https://api.weorder.app/assets/uploads/media-uploader/1696757373709.jpeg",
      "is_free": 1,
      "status": 1,
      "vendor": "adidas",
      "keys": [
        {
          "title": 'url',
          "key":
              'div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a',
          "attribute": 'href',
          "prefix": 'https://www.adidas.com/'
        },
        {
          "title": 'image',
          "key":
              'div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img',
          "attribute": 'src'
        },
        {
          "title": 'title',
          "key": 'div.line-item__details___HibzD > div > div > div > a > span',
          "attribute": null
        },
        {
          "title": 'price',
          "key":
              'div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div',
          "attribute": null
        },
        {
          "title": 'color',
          "key": 'div.line-item__details___HibzD > div > div > div > span',
          "attribute": null
        },
        {
          "title": 'size',
          "key":
              'div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div > div > div.line-item__attribute___NdmJb > span',
          "attribute": null,
          "innerChild": {
            "className": 'data-auto-id',
            "classValue": 'cart-line-item-attribute-size'
          }
        },
      ],
      "script": '''

function getTitles() {
  return Array.from(document.querySelectorAll("div > div.line-item___i5rwj.line-item__border-redesign___cp6Bq > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(1) > div > a > span")).map((x)=> x.textContent);
}

function getQuantities() {
  return Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.dropdown-container___mjvVf > div > div > select")).map((x)=>x.value);
}

function getImages() {
  return Array.from(document.querySelectorAll("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img")).map((x)=>x.src);
}

function getPrices() {
  return Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div")).map((x)=>x.textContent);
}

function getUrls() {
  return Array.from(document.querySelectorAll("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a")).map((x)=>x.href);
}

function getColors() {
  return Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(2) > div > span")).map((x)=>x.textContent);
}

function getSizes() {
  return Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div.gl-vspace > div > div > span:nth-child(2)")).map((x)=>x.textContent);
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
'''
    }),
    // - Puma
    ShoppingWebsite.fromJson(const {
      "id": 3,
      "name": "puma",
      "url": "https://uk.puma.com/uk/en",
      "image":
          "https://api.weorder.app/assets/uploads/media-uploader/1696772691443.jpeg",
      "is_free": 1,
      "status": 1,
      "vendor": "puma",
      "keys": [
        {
          "title": 'url',
          "key": 'ol > li > div > div > div > div > div > a',
          "attribute": 'href',
          "prefix": 'https://uk.puma.com',
        },
        {
          "title": 'image',
          "key": 'div > div > div > div > div > a > div > img',
          "attribute": 'src',
        },
        {
          "title": 'title',
          "key": 'div > div > div > div > div > div > div.space-y-3 > a > h3',
          "attribute": null,
        },
        {
          "title": 'price',
          "key": 'div > div > div > div > div > div > div > p > span',
          "attribute": null,
          "innerChild": {
            "className": "data-test-id",
            "classValue": "item-price",
          }
        },
        {
          "title": 'color',
          "key": 'div.space-y-3 > div > div > p > span',
          "attribute": null,
          "innerChild": {
            "className": "data-test-id",
            "classValue": "color",
          },
        },
        {
          "title": 'size',
          "key": 'div.space-y-3 > div > div > p > span',
          "attribute": null,
          "innerChild": {
            "className": "data-test-id",
            "classValue": "size",
          },
        },
      ],
      "script": '''

function getTitles() {
  return Array.from(document.dyQuerySelectorAll("div > div > div > div > div > div > div.space-y-3 > a > h3")).map((x)=>x.textContent);
}

function getQuantities() {
  return Array.from(document.querySelectorAll("div > div > div > div > div > div > div.space-y-3 > div > div.flex.w-24 > div > div > select")).map((x)=>x.value);
}

function getImages() {
  return Array.from(document.querySelectorAll("div > div > div > div > div > a > div > img")).map((x)=>x.src);
}

function getPrices() {
  return Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id='item-price']")).map((x)=>x.textContent);
}

function getUrls() {
  return Array.from(document.querySelectorAll("div > div > div > div > div > a[data-test-id='cart-item-img-link']")).map((x)=>x.href);
}

function getColors() {
  return Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id='color']")).map((x)=>x.textContent);
}

function getSizes() {
  return Array.from(document.querySelectorAll("div > div > div > div > div > div > div > p > span[data-test-id='size']")).map((x)=>x.textContent);
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
'''
    }),
    // - Nike
    ShoppingWebsite.fromJson(const {
      "id": 4,
      "name": "nike",
      "url": "https://www.nike.com/",
      "image":
          "https://api.weorder.app/assets/uploads/media-uploader/1702556484833.jpeg",
      "is_free": 1,
      "status": 1,
      "vendor": "nike",
      "script": '''

function getTitles() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > a > h2")).map((x)=>x.textContent);
}

function getQuantities() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > div.css-3x77rp.eyas8011 > div:nth-child(2) > div > select")).map((x)=>x.value);
}

function getImages() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > figure > a > picture > img")).map((x)=>x.src);
}

function getPrices() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-q2xuk9.ezci20q0 > p > span > span > span")).map((x)=>x.childNodes[1].textContent);
}

function getUrls() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > figure > a")).map((x)=>x.href);
}

function getColors() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > div.css-1f31asj.eneqjw10")).map((x)=>x.textContent);
}

function getSizes() {
  return Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q3 > div.css-1u52liu.ezci20q1 > div.css-3x77rp.eyas8011 > div:nth-child(1) > div > select")).map((x)=>x.options[x.selectedIndex].text);
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
'''
    }),
    // - She-in
    ShoppingWebsite.fromJson(const {
      "id": 5,
      "name": "She-in",
      "url": "https://www.shein.com/Home",
      "image": "https://s3.we-order.com/recourses/images/1696756911668.jpeg",
      "is_free": 1,
      "status": 1,
      "vendor": "She-in"
    }),
    // -
    ShoppingWebsite.fromJson(const {
      "id": 6,
      "name": "Amazon",
      "url": "https://www.amazon.co.uk/",
      "image":
          "https://api.weorder.app/assets/uploads/media-uploader/1684845789875.png",
      "is_free": 1,
      "status": 1,
      "vendor": "amazon"
    }),
    const ShoppingWebsite(
      id: 7,
      name: '',
      url: 'https://www.dofactory.com/html/select/hidden',
      image: '',
      vendor: ShoppingWebsiteVendor.adidas,
      keys: [],
    ),
  ];

  ShoppingWebsiteScript script() => ShoppingWebsiteScriptDTO.fromMap({
        "titles":
            'return Array.from(document.querySelectorAll("div > div.line-item___i5rwj.line-item__border-redesign___cp6Bq > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(1) > div > a > span")).map((x)=> x.textContent);',
        "quantities":
            'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.dropdown-container___mjvVf > div > div > select")).map((x)=>x.value);',
        "images":
            'Array.from(document.querySelectorAll("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img")).map((x)=>x.src);',
        "prices":
            'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div")).map((x)=>x.textContent);',
        "urls":
            'Array.from(document.querySelectorAll("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a")).map((x)=>x.href);',
        "colors":
            'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(2) > div > span")).map((x)=>x.textContent);',
        "sizes":
            'Array.from(document.querySelectorAll("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div.gl-vspace > div > div > span:nth-child(2)")).map((x)=>x.textContent);'
      }).toModel();
}
