import 'package:equatable/equatable.dart';

class HttpApiException extends Equatable implements Exception {
  final String? _message;
  final String? _prefix;

  const HttpApiException({String? message, String? prefix})
      : _message = message,
        _prefix = prefix;

  @override
  String toString() {
    return "${_prefix ?? ''}${_message ?? ''}";
  }

  String get message => _message ?? '';

  @override
  List<Object?> get props => [_message, _prefix];
}

///Exception occur when un expected error happened throw calling an api
class NoInternetException extends HttpApiException {
  const NoInternetException([message])
      : super(
            message: message, prefix: "You are not connected to the internet");
}

///Exception occur when un expected error happened throw calling an api
class UnExpectedException extends HttpApiException {
  const UnExpectedException([message]) : super(message: message, prefix: "");
}

///Exception occur when fail to decode json to dart object
class DecodingException extends HttpApiException {
  const DecodingException([message])
      : super(message: message, prefix: "Decoding error: ");
}

///Exception occur when api request throws SocketException or TimeOutException
class ConnectionException extends HttpApiException {
  const ConnectionException([message])
      : super(message: message, prefix: "Connection Error: ");
}

///Exception occur when api request return invalid or empty data
class BadResponseException extends HttpApiException {
  const BadResponseException({String? message})
      : super(message: message, prefix: "Invalid data: ");
}

///Exception occur when api request return 400 status code
class BadRequestException extends HttpApiException {
  const BadRequestException([message]) : super(message: message, prefix: "");
}

class ForbiddenException extends HttpApiException {
  const ForbiddenException([message])
      : super(message: message, prefix: "Forbidden: ");
}

class ValidationException extends HttpApiException {
  const ValidationException([message])
      : super(message: message, prefix: "Validation: ");
}

///Exception occur when api request return 401 or 403 status code
class UnauthorizedException extends HttpApiException {
  const UnauthorizedException([message])
      : super(message: message, prefix: "Unauthorized: ");
}

///Exception occur when api request return 404 status code
class NotExistsRouteException extends HttpApiException {
  const NotExistsRouteException([message])
      : super(message: message, prefix: "Not Exists Route: ");
}

///Exception occur when api request return 500 status code
class ServerException extends HttpApiException {
  const ServerException([message])
      : super(message: "Server Error: $message", prefix: "Server Error: ");
}

class InvalidUsernameOrPasswordException extends HttpApiException {}
