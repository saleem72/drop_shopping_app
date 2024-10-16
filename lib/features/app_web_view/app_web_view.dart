// ignore_for_file: public_member_api_docs, sort_constructors_first
//
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:drop_shopping_app/core/data/dtos/js_products_stuff.dart';
// ignore: unused_import
import 'package:drop_shopping_app/core/data/helpers/script_holder.dart';
import 'package:drop_shopping_app/core/data/helpers/script_holder_provider.dart';
import 'package:drop_shopping_app/core/domain/models/drop_shopping_product.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website.dart';
import 'package:drop_shopping_app/core/domain/models/shopping_website_vendor.dart';
import 'package:drop_shopping_app/features/products_list_screen/products_list_screen.dart';
import 'package:drop_shopping_app/features/single_drop_shopping_product_screen/single_drop_shopping_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_core/my_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      ..addJavaScriptChannel(
        'PRINT',
        onMessageReceived: (message) {
          developer.log(message.message, name: 'JavaScriptChannel');
        },
      )
      ..setOnConsoleMessage((message) {
        developer.log(message.message, name: 'JavaScriptChannel');
      })
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    controller.setNavigationDelegate(
      NavigationDelegate(
        onUrlChange: (change) {},
        onPageStarted: (url) {
          if (context.mounted) {
            developer.log('start url: $url', name: 'AppWebView');
            setState(() {
              loadingPercentage = 0;
              hasFinished = false;
            });
          }
        },
        onProgress: (progress) {
          if (context.mounted) {
            setState(() {
              loadingPercentage = progress;
            });
          }
        },
        onPageFinished: (url) {
          if (context.mounted) {
            setState(() {
              loadingPercentage = 100;
              hasFinished = true;
            });
          }
          // _injectJavaScriptToSetLocation();
          if (widget.website.vendor == ShoppingWebsiteVendor.amazon) {
            _injectJavaScriptToSetLocationUK(
              url: widget.website.addressChangeUrl,
              zipCode: widget.website.zipCode,
            );
          }
        },
        onNavigationRequest: (navigation) {
          if (context.mounted) {
            if (!navigation.url.startsWith('http')) {
              return NavigationDecision.prevent;
            }
            if (navigation.url.startsWith('https://play.google.com/')) {
              return NavigationDecision.prevent;
            }
            setState(() {
              currentUrl = navigation.url;
              // readJS();
            });
          }
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
              child: Stack(
                children: [
                  WebViewWidget(
                    controller: controller,
                  ),
                  FutureBuilder(
                      future: controller.canGoBack(),
                      builder: (_, snapShot) {
                        final canGoBack = snapShot.data ?? false;
                        return canGoBack
                            ? Positioned(
                                left: context.isArabic ? null : 16,
                                right: context.isArabic ? 16 : null,
                                top: 8,
                                child: Material(
                                  shape: const CircleBorder(),
                                  child: IconButton.filled(
                                    onPressed: () async {
                                      // final url = await controller.currentUrl();
                                      controller.goBack();
                                    },
                                    icon: const Icon(Icons.arrow_back),
                                  ),
                                ),
                              )
                            : const SizedBox.shrink();
                      })
                ],
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

  void _getPage(BuildContext context) async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    final scriptHolder = ScriptHolder(
      prices:
          'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q2 > div.css-q2xuk9.ezci20q0 > p > span > span > span.ew71yvl3")).map((x) => x.childNodes[1].textContent)',
      titles:
          'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q2 > div.css-1u52liu.ezci20q1 > a > h2")).map((x) => x.textContent.trim())',
      urls:
          'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > figure > a")).map((x)=>x.href)',
      sizes:
          'Array.from(document.querySelectorAll(" div.css-k008qs.ei1batk0 > div > div.css-18o14p5.ezci20q2 > div.css-1u52liu.ezci20q1 > div.css-3x77rp.ehjd64f0 > div.css-wjo6j8.ehjd64f1 > div.ehjd64f2.css-7ab523.e1blmpt20 > button")).map((x) => x.textContent)',
      colors: null,
      images:
          'Array.from(document.querySelectorAll("div.css-k008qs.ei1batk0 > figure > a > picture > img")).map((x)=>x.src)',
      quantities: null,
    );

    final script = scriptHolder.script;

    // final script = widget.website.vendor.scriptHolder.script;

    try {
      final body =
          await controller.runJavaScriptReturningResult(script) as String;
      final stuff = productsStuffResponseFromJson(body).toModel();
      // print(stuff.images);
      final products = stuff.toProducts();

      if (context.mounted) {
        context.navigator.push(MaterialPageRoute(
            builder: (_) => ProductsListScreen(products: products)));
      }
    } catch (e) {
      developer.log(e.toString());
    }
    if (context.mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  productBaseDecode(BuildContext context) async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    const something = '''

function getQuantities() {
  return '';
}

function getImages() {
  return document.querySelector("#main-image").src ?? '';
}

function getTitles() {
  return document.querySelector("#title").textContent.trim() ?? '';
}

function getPrices() {
  return '';
}

function getUrls() {
  return '';
}

function getColors() {
  return '';
}

function getSizes() {
  return '';
}

function getProperties() {
  return Array.from(document.querySelectorAll("table.prodDetTable > tbody > tr")).map((x) => `{ "prop": "\${x.querySelector('th').textContent.trim()}", "value": "\${x.querySelector('td').textContent.trim().replace(/"/g, '\\\\"')}" }`);
}

function toObject(){

    var dict = {
        title: getTitles(),
        image: getImages(),
        price: '',
        url: '',
        color: '',
        size: '',
        quantitie: '',
        properties: []
    };
    dict.properties.push.apply(dict.properties, getProperties());
    return dict;

}
toObject();
''';

    try {
      final body =
          await controller.runJavaScriptReturningResult(something) as String;

      final product = DropShoppingProduct.fromJson(body);

      if (context.mounted) {
        context.navigator.push(MaterialPageRoute(
            builder: (_) => SingleDropShoppingProductScreen(product: product)));
      }
    } catch (e) {
      developer.log(e.toString());
    }
    if (context.mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  listOfCards(BuildContext context) async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    // final scriptHolder = ScriptHolder(
    //   cards: 'document.querySelectorAll("div.item___G_y2d")',
    //   titles:
    //       'querySelector("div > div > div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(1) > div > a > span").textContent.trim()',
    //   quantities: null,
    //   images:
    //       'querySelector("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a > img").src',
    //   prices:
    //       'querySelector("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__footer___UcQo4.row.gl-align-items-center > div.gl-hidden-m > div > div").textContent.trim()',
    //   urls:
    //       'querySelector("div > div > div.no-gutters.col-s-5.line-item__image-sizing-wrapper___a91cW > a").href',
    //   colors:
    //       'querySelector("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div:nth-child(2) > div > span").textContent.trim()',
    //   sizes:
    //       'querySelector("div > div.line-item__details-wrapper___hdXUf.col-s-7.col-m-7.col-l-12.offset-l-1.no-gutters > div.line-item__details-row___hV7vL.row > div.line-item__details___HibzD > div > div.gl-vspace > div > div > span:nth-child(2)").textContent.trim()',
    // );

    final scriptHolder = ScriptHolderProvider.newAdidas;

    try {
      final body = await controller
          .runJavaScriptReturningResult(scriptHolder.latestScript) as String;

      final product = DropShoppingProduct.fromMapList(json.decode(body));

      if (context.mounted) {
        context.navigator.push(MaterialPageRoute(
            builder: (_) => ProductsListScreen(products: product)));
      }
    } catch (e) {
      developer.log(e.toString());
    }
    if (context.mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  void _injectAmazonJavaScript(String zipCode) async {
    developer.log('About to set amazon location', name: 'AppWebView');
    final result = await controller.runJavaScriptReturningResult('''
      function doit() {
        document.querySelector("div.nav-right").style.display = 'none';
        // document.querySelector("#nav-subnav-container").style.display = 'none'
        var hasSet = document.querySelector("#glow-ingress-single-line").textContent.trim().includes('$zipCode');
        return hasSet;
      }

      doit();
    ''');
    final hasSet = result as bool? ?? false;
    if (!hasSet) {
      developer.log('Setting amazon location', name: 'AppWebView');
      _injectJavaScriptToSetLocation(zipCode);
    }
  }

  // locationType=LOCATION_INPUT&zipCode=$zipCode&storeContext=generic&deviceType=mobile&pageType=Gateway&actionSource=glow

  void _injectJavaScriptToSetLocation(String zipCode) async {
    // Se146ef   E16AN
    developer.log('zip code: $zipCode', name: 'JavaScriptChannel');
    controller.runJavaScriptReturningResult('''

      function makeRequest() {
        return new Promise(function (resolve, reject) {
            // WARNING: For POST requests, body is set to null by browsers.
var data = JSON.stringify({
  "locationType": "LOCATION_INPUT",
  "zipCode": "E1 6AN",
  "deviceType": "web",
  "storeContext": "generic",
  "pageType": "Gateway",
  "actionSource": "glow"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function() {
  if(this.readyState === 4) {
    console.log(this.responseText);
    if (xhr.readyState === 4) {
        console.log('readyState Api done');
        
        if (xhr.status === 200) {
          console.log('readyState', xhr.readyState, 'status code: ' , xhr.status);
          jQuery("#glow-ingress-single-line").load(location.href + " #glow-ingress-single-line");
        }
      }
  }
});

xhr.open("POST", "https://www.amazon.co.uk/portal-migration/hz/glow/address-change?actionSource=glow");
xhr.setRequestHeader("device-memory", "8");
xhr.setRequestHeader("anti-csrftoken-a2z", "hFl+AvCjGxRBb+Gf+LGGqWcti2I+7WERSf5Vw2tVDLPWAAAAAGcOazoAAAAB");
xhr.setRequestHeader("rtt", "0");
// xhr.setRequestHeader("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1");
// xhr.setRequestHeader("sec-ch-device-memory", "8");
xhr.setRequestHeader("Content-Type", "application/json");
xhr.setRequestHeader("Accept", "text/html,*/*");
// xhr.setRequestHeader("Referer", "https://www.amazon.co.uk/");
xhr.setRequestHeader("viewport-width", "980");
xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
xhr.setRequestHeader("dpr", "3");
xhr.setRequestHeader("downlink", "10");
// xhr.setRequestHeader("sec-ch-dpr", "3");
xhr.setRequestHeader("ect", "4g");
// xhr.setRequestHeader("sec-ch-viewport-width", "980");
// WARNING: Cookies will be stripped away by the browser before sending the request.
// xhr.setRequestHeader("Cookie", "i18n-prefs=GBP; session-id=262-1834658-2148826; session-id-time=2082787201l; session-token=\"C5lcEZ9jytlYplV2wjOEzKCWTsJpX3ZW50HwjeAKWtRNisPlFLDni3uoooOBBEd8a8bVdYZU9Pl1+hsMKQ2lHtyGuwNKg4Kogcb9N5TTNANWuJidSwaQMX4z4kZvebMioF5vljjwGTjziDRPynmO6t+/Q3lLli4ybg3cqo0XYy1++yy3564tBHwOYE8ouzWPz+30hGrmUqUsLdCfXvuxBmyrIK84KEkJV+tlF+6VnMJkvQReTB/s12+17gp95EOm/mFuLlyjN3QlvtUI6BhIiZuH1xT3AIcW6omeOlOLrPG5Ed4szAG2CanmoLRf/GMgwDcGu8HTJG05/+iw1WQ1Mi3J5H/K/LKsLJF7WNch1XQ=\"; sp-cdn=\"L5Z9:SY\"; ubid-acbuk=262-0156413-6008450");

xhr.send(data);
        });
      }

      function include() {
        var head      = document.getElementsByTagName('head')[0];
        var script    = document.createElement('script');
        script.type   = 'text/javascript';
        script.src    = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js";
        script.onload = script.onreadystatechange = function() {
          
          makeRequest()
          // prevent memory leak in IE
          head.removeChild(script);
          script.onload = null;
        };
        head.appendChild(script);
      }



      

        include();
      
    ''');
  }

  void _injectJavaScriptToSetLocationUK({
    required String url,
    required String zipCode,
  }) async {
    // controller.runJavaScript('');
    controller.runJavaScriptReturningResult('''

      function makeRequest() {
        return new Promise(function (resolve, reject) {
            var xhttp = new XMLHttpRequest();
          xhttp.open('POST', $url);
          xhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=UTF-8');
      
             xhttp.onreadystatechange = function() {
            console.log('readyState', xhttp.readyState, 'status code: ' , xhttp.status)
            if (xhttp.readyState === 4) {
              console.log('readyState Api done');
              // window.location.reload();
              if (xhttp.status === 200) {
                resolve(true);
                jQuery("#glow-ingress-single-line").load(location.href + " #glow-ingress-single-line");
              } else {
                reject(false);
              }
            }
          };
            xhttp.send('locationType=LOCATION_INPUT&zipCode=$zipCode&storeContext=generic&deviceType=mobile&pageType=Gateway&actionSource=glow');
            console.log('after send');
        });
      }

      function include() {
        var head      = document.getElementsByTagName('head')[0];
        var script    = document.createElement('script');
        script.type   = 'text/javascript';
        script.src    = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js";
        script.onload = script.onreadystatechange = function() {
          console.log('onreadystatechange', script.onreadystatechange);
          makeRequest()
          // prevent memory leak in IE
          head.removeChild(script);
          script.onload = null;
        };
        head.appendChild(script);
      }



      

        include();
      
    ''');
  }
}
