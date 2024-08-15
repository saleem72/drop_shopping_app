// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'dart:io' as io;

class ScriptHolder {
  final String? quantities;
  final String? titles;
  final String? images;
  final String? prices;
  final String? urls;
  final String? colors;
  final String? sizes;

  ScriptHolder({
    required this.titles,
    required this.quantities,
    required this.images,
    required this.prices,
    required this.urls,
    required this.colors,
    required this.sizes,
  });

  factory ScriptHolder.empty() => ScriptHolder(
        titles: null,
        quantities: null,
        images: null,
        prices: null,
        urls: null,
        colors: null,
        sizes: null,
      );

  String get script => '''

function getQuantities() {
  return ${quantities ?? '[]'};
}

function getImages() {
  return ${images ?? '[]'};
}

function getTitles() {
  return ${titles ?? '[]'};
}

function getPrices() {
  return ${prices ?? '[]'};
}

function getUrls() {
  return ${urls ?? '[]'};
}

function getColors() {
  return ${colors ?? '[]'};
}

function getSizes() {
  return ${sizes ?? '[]'};
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
    return ${io.Platform.isIOS ? 'JSON.stringify(dict);' : 'dict'}

}
toObject();
''';
}
