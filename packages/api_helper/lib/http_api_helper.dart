//
import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:developer' as developer;

import 'package:api_helper/api_helper.dart';
import 'package:http/http.dart' as http;

class HttpApiHelper implements ApiHelper {
  final http.Client client;
  final NetworkInfo networkInfo;

  HttpApiHelper({
    required this.client,
    required this.networkInfo,
  });

  @override
  Future<http.Response> get({
    required String url,
    required String endPoint,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    bool printResult = false,
  }) async {
    Future<http.Response> request;
    try {
      final isConnected = await networkInfo.isConnected;
      if (!isConnected) {
        throw const NoInternetException();
      }
      final uri = Uri.parse(url + endPoint).replace(queryParameters: params);

      if (headers != null) {
        request = client.get(uri, headers: headers);
      } else {
        request = client.get(uri);
      }
      final response = await request;
      if (printResult) {
        _printResponse(response);
      }
      return _returnResponse(response);
    } catch (e) {
      throw _rethrowExceptions(e);
    }
  }

  @override
  Future<http.Response> post({
    required String url,
    required String endPoint,
    Map<String, dynamic>? body,
    required Map<String, String> headers,
    Map<String, String>? params,
    bool printResult = false,
  }) async {
    Future<http.Response> request;
    try {
      final isConnected = await networkInfo.isConnected;
      if (!isConnected) {
        throw const NoInternetException();
      }
      final uri = Uri.parse(url + endPoint).replace(queryParameters: params);
      final bodyStr = body == null ? null : json.encode(body);
      request = client.post(uri, headers: headers, body: bodyStr);

      final response = await request;
      if (printResult) {
        _printResponse(response);
      }
      return _returnResponse(response);
    } catch (e) {
      throw _rethrowExceptions(e);
    }
  }

  @override
  Future<http.Response> put({
    required String url,
    required String endPoint,
    Map<String, dynamic>? body,
    required Map<String, String> headers,
    Map<String, String>? params,
    bool printResult = false,
  }) async {
    Future<http.Response> request;
    try {
      final isConnected = await networkInfo.isConnected;
      if (!isConnected) {
        throw const NoInternetException();
      }
      final uri = Uri.parse(url + endPoint).replace(queryParameters: params);
      final bodyStr = body == null ? null : json.encode(body);
      request = client.put(uri, headers: headers, body: bodyStr);

      final response = await request;
      if (printResult) {
        _printResponse(response);
      }
      return _returnResponse(response);
    } catch (e) {
      throw _rethrowExceptions(e);
    }
  }

  Exception _rethrowExceptions(error) {
    if (error is NoInternetException) {
      return error;
    }
    if (error is io.SocketException) {
      return const ConnectionException('No Internet connection');
    }
    if (error is TimeoutException) {
      return const ConnectionException('No Internet connection');
    }
    if (error is FormatException) {
      return const DecodingException('Fail to decode data');
    }
    if (error is TypeError) {
      return const DecodingException('Fail to decode data');
    }
    if (error is BadRequestException) {
      return error;
    }
    if (error is BadResponseException) {
      return error;
    }
    if (error is UnauthorizedException) {
      return error;
    }
    if (error is ForbiddenException) {
      return error;
    }
    if (error is ServerException) {
      return error;
    }
    if (error is NotExistsRouteException) {
      return error;
    }

    return UnExpectedException(error.toString());
  }

  http.Response _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 400:
        throw BadRequestException(_get400Message(response));
      case 401:
        throw UnauthorizedException(_get400Message(response));
      case 403:
        throw ForbiddenException(_get400Message(response));
      case 422:
        return response;
      case >= 400 && < 500:
        throw UnauthorizedException(_get400Message(response));
      case 500:
        throw const ServerException('');
      default:
        return response;
    }
  }

  _printResponse(http.Response response) {
    var temp = utf8.decode(response.bodyBytes);
    developer.log("🎲 ${temp.toString()}", name: 'api.call');
  }

  String _get400Message(http.Response response) {
    try {
      final remote = json.decode(response.body);
      final codersResponse = AppResponse.fromJson(remote);
      return codersResponse.message ?? '';
    } catch (e) {
      return '400 unknown message';
    }
  }

  @override
  Future<http.StreamedResponse> multiPart({
    required String url,
    required String endPoint,
    Map<String, String>? body,
    required Map<String, String> headers,
    required io.File? file,
    // required String filename,
    Map<String, String>? params,
    required bool printResult,
  }) async {
    // var request = http.MultipartRequest(‘POST’, Uri.parse(‘YOUR URL’));
    final uri = Uri.parse(url + endPoint).replace(queryParameters: params);
    var request = http.MultipartRequest('POST', uri);

    request.headers.addAll(headers);
    if (file != null) {
      // final bytes = await file.readAsBytes();

      // final httpImage = http.MultipartFile.fromBytes(
      //   'file',
      //   bytes,
      //   filename: 'file.jpg',
      // );

      final httpImage = await http.MultipartFile.fromPath('file', file.path);
      request.files.add(httpImage);
    }
    if (body != null) {
      request.fields.addAll(body);
    }
    final response = await request.send();
    return response;
  }
}

class AppResponse {
  String? message;
  int? statusCode;
  String? status;
  AppResponse({
    this.message,
    this.statusCode,
    this.status,
  });

  factory AppResponse.fromJson(Map<String, dynamic> json) => AppResponse(
        message: json["message"],
        statusCode: json["statusCode"],
        status: json["status"],
      );
}
