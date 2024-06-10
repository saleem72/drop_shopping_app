// ignore_for_file: public_member_api_docs, sort_constructors_first
//
import 'dart:convert';
import 'dart:isolate';

import 'package:drop_shopping_app/core/data/dtos/js_products_stuff.dart';
import 'package:flutter/material.dart';
import 'package:html/dom.dart' as dom;
import 'package:my_core/my_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/features/handle_string/handle_string_screen.dart';

class AppWebView extends StatefulWidget {
  const AppWebView({
    super.key,
    required this.website,
  });
  final ShoppingWebsite website;
  @override
  State<AppWebView> createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  late final WebViewController controller;
  bool hasFinished = false;
  bool isLoading = false;
  var loadingPercentage = 0;
  late String currentUrl;
  @override
  void initState() {
    super.initState();
    currentUrl = widget.website.url;
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.website.url),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    controller.setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
            hasFinished = false;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
            hasFinished = true;
          });
        },
        onNavigationRequest: (navigation) {
          setState(() {
            currentUrl = navigation.url;
            // readJS();
          });
          return NavigationDecision.navigate;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(
                controller: controller,
              ),
            ),
            Material(
              elevation: 4,
              child: Container(
                color: Colors.grey.shade50,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: FilledButton(
                            onPressed: () =>
                                hasFinished ? _getPage(context) : null,
                            style: FilledButton.styleFrom(
                              backgroundColor:
                                  hasFinished ? Colors.green : Colors.pink,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Fetch Cart'),
                                isLoading
                                    ? const SizedBox(width: 16)
                                    : const SizedBox.shrink(),
                                isLoading
                                    ? const CircularProgressIndicator()
                                    : const SizedBox.shrink(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (loadingPercentage < 100)
                        Expanded(
                          child: Row(
                            children: [
                              const SizedBox(width: 16),
                              Expanded(
                                child: LinearProgressIndicator(
                                  value: loadingPercentage / 100.0,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void doit(String body) {
  //   final content = json.decode(body);
  //   final soup = beautiful.BeautifulSoup(content);

  //   final quantity = soup.find(
  //       'article > div.Actions-module--actions__24Z1Z > div > div > div > select');

  //   final options = quantity?.findAll('option') ?? [];

  // }

  Future<List<DropShoppingProduct>> temp(String body) async {
    final products = await Isolate.run<List<DropShoppingProduct>>(() async {
      final content = json.decode(body);

      var html = dom.Document.html(content);
      final titles = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > a > h2')
          .map((e) => e.innerHtml.trim())
          .toList();

      final images = html
          .querySelectorAll('article > a > div > img')
          .map((e) => e.attributes['src'])
          .toList();

      final prices = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > span')
          .map((e) => e)
          .toList();

      final quantities = html
          .querySelectorAll(
              'article > div.Actions-module--actions__24Z1Z > div > div > div > select > option')
          .map((e) => e)
          .toList();

      final urls = html
          .querySelectorAll('article > div.CartItem-module--details__3xy60 > a')
          .map((e) => e.attributes['href'] == null
              ? null
              : 'https://www2.hm.com${e.attributes['href']!}')
          .toList();

      final colors = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(1) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn')
          .map((e) => e.innerHtml.trim())
          .toList();

      final sizes = html
          .querySelectorAll(
              'article > div.CartItem-module--details__3xy60 > ul > li:nth-child(2) > span.d1cd7b.b7f566.CartItemDetails-module--value__AcUPn')
          .map((e) => e.innerHtml.trim())
          .toList();

      final products = List.generate(
        titles.length,
        (index) => DropShoppingProduct(
          title: titles[index],
          image: images[index],
          price: prices[index].text,
          quantity: quantities[index].toString(),
          url: urls[index],
          color: colors[index],
          size: sizes[index],
        ),
      );
      return products;
    });

    return products;
  }

  void _getPage(BuildContext context) async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    // final body = await controller.runJavaScriptReturningResult(
    //     "new XMLSerializer().serializeToString(document);") as String?;

    // if (context.mounted) {
    //   context.navigator.pushReplacement(MaterialPageRoute(
    //       builder: (_) => HandleStringScreen(
    //             website: widget.website,
    //             page: body,
    //           )));
    // }

// var e = document.getElementById("myselect").value;
// e
    try {
      final body = await controller.runJavaScriptReturningResult('''

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

function toObject(){

    var dict = {
        titles: [],
        images: [],
        prices: [],
        quantities: []
    };

    dict.titles.push.apply(dict.titles, getTitles());
    dict.images.push.apply(dict.images, getImages());
    dict.prices.push.apply(dict.prices, getPrices());
    dict.quantities.push.apply(dict.quantities, getQuantities());
    return dict;

}
toObject();
''') as String;
      final stuff = productsStuffResponseFromJson(body).toModel();
      print(stuff.toString());
    } catch (e) {
      print(e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }
}
