library api_helper;

export './http_api_helper.dart';
export './network_info.dart';
export './http_api_exceptions.dart';

import 'dart:io' as io;

import 'package:http/http.dart' as http;

abstract class ApiHelper {
  Future<http.Response> get({
    required String url,
    required String endPoint,
    Map<String, String> headers,
    Map<String, String> params,
    bool printResult,
  });
  Future<http.Response> post({
    required String url,
    required String endPoint,
    Map<String, dynamic>? body,
    required Map<String, String> headers,
    Map<String, String> params,
    required bool printResult,
  });
  Future<http.Response> put({
    required String url,
    required String endPoint,
    Map<String, dynamic>? body,
    required Map<String, String> headers,
    Map<String, String> params,
    required bool printResult,
  });
  Future<http.StreamedResponse> multiPart({
    required String url,
    required String endPoint,
    Map<String, String>? body,
    required Map<String, String> headers,
    required io.File? file,
    // required String filename,
    Map<String, String>? params,
    required bool printResult,
  });
}
