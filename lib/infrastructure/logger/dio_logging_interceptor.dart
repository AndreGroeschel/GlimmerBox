import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// An interceptor for the Dio HTTP client that logs outgoing requests
/// and incoming responses.
///
/// This interceptor leverages the `Logger` package to output logs.
/// - Logs the HTTP method and URL for outgoing requests.
/// - Logs the status code and data for incoming responses.
/// - Logs any errors that occur during the request.
class DioLoggingInterceptor extends Interceptor {
  /// Creates a new instance of `LoggingInterceptor`.
  ///
  /// Takes a required [logger] parameter,
  /// which should be an instance of `Logger`.
  DioLoggingInterceptor({required this.logger});

  /// An instance of `Logger` that this interceptor will use to output logs.
  final Logger logger;

  /// Logs outgoing requests.
  ///
  /// Overrides the [onRequest] method from the base [Interceptor] class.
  /// Logs the HTTP method and URL of the request.
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d('Sending request: ${options.method} ${options.path}');
    super.onRequest(options, handler);
  }

  /// Logs incoming responses.
  ///
  /// Overrides the [onResponse] method from the base [Interceptor] class.
  /// Logs the status code and data of the response.
  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    logger.d('Received response: ${response.statusCode} ${response.data}');
    super.onResponse(response, handler);
  }

  /// Logs errors that occur during the request.
  ///
  /// Overrides the [onError] method from the base [Interceptor] class.
  /// Logs the message of the error.
  @override
  void onError(DioException exception, ErrorInterceptorHandler handler) {
    final error = 'Error: ${exception.message}';
    logger.e(error);
    super.onError(exception, handler);
  }
}
