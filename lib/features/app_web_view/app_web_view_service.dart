//

import 'dart:developer';

import 'package:http/http.dart' as http;

class AppWebViewService {
  final http.Client _client;

  AppWebViewService({
    required http.Client client,
  }) : _client = client;
  Future setLocation() async {
    const zipCode = '33136';
    const url = 'https://www.amazon.com/gp/delivery/ajax/address-change.html';
    final uri = Uri.parse(url);
    final headers = {
      'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'
    };
    const body =
        'locationType=LOCATION_INPUT&zipCode=$zipCode&storeContext=generic&deviceType=mobile&pageType=Gateway&actionSource=glow';
    try {
      final result = await _client.post(uri, headers: headers, body: body);
      if (result.statusCode == 200) {
        return true;
      } else {
        log('🔥 error statusCode: ${result.statusCode}',
            name: 'AppWebViewService');
        return false;
      }
    } catch (e) {
      log('🔥 error', name: 'AppWebViewService', error: e);
    }
  }
}
