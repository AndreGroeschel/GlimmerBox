import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/infrastructure/logger/dio_logging_interceptor.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

class MockLogger extends Mock implements Logger {}

class MockErrorInterceptorHandler extends Mock
    implements ErrorInterceptorHandler {}

void main() {
  late DioLoggingInterceptor interceptor;
  late MockLogger mockLogger;
  final mockHandler = MockErrorInterceptorHandler();

  setUp(() {
    mockLogger = MockLogger();
    interceptor = DioLoggingInterceptor(logger: mockLogger);
  });

  test('should log outgoing requests', () {
    final options = RequestOptions(path: '/test', method: 'GET');

    interceptor.onRequest(options, RequestInterceptorHandler());

    verify(() => mockLogger.i('Sending request: GET /test')).called(1);
  });

  test('should log incoming responses', () {
    final response = Response<dynamic>(
      requestOptions: RequestOptions(path: '/test'),
      statusCode: 200,
      data: 'OK',
    );

    interceptor.onResponse(response, ResponseInterceptorHandler());

    verify(() => mockLogger.i('Received response: 200 OK')).called(1);
  });

  test('should log errors', () {
    final error = DioException(
      requestOptions: RequestOptions(path: '/test'),
      message: 'message',
    );

    interceptor.onError(error, mockHandler);

    verify(() => mockLogger.e(any<dynamic>())).called(1);
  });
}
