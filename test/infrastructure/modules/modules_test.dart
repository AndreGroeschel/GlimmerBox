import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/collections_endpoint.dart';
import 'package:glimmer_box/infrastructure/collections/endpoints/nfts_endpoint.dart';
import 'package:glimmer_box/infrastructure/logger/dio_logging_interceptor.dart';
import 'package:glimmer_box/injection_container.dart';
import 'package:logger/logger.dart';

void main() {
  setUpAll(configureDependencies);
  // ensures that the dependency injection is set up correctly
  test('Logger should be registered and of correct type', () {
    final logger = getIt<Logger>();
    expect(logger, isA<Logger>());
  });

  test('Dio should be registered and have logging interceptor', () {
    final dio = getIt<Dio>();
    expect(dio, isA<Dio>());
    expect(dio.interceptors.any((e) => e is DioLoggingInterceptor), isTrue);
  });

  test('CollectionsEndpoint should be registered', () {
    final endpoint = getIt<CollectionsEndpoint>();
    expect(endpoint, isA<CollectionsEndpoint>());
  });

  test('NftsEndpoint should be registered', () {
    final endpoint = getIt<NftsEndpoint>();
    expect(endpoint, isA<NftsEndpoint>());
  });
}
