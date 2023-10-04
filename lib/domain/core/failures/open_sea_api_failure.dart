import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_sea_api_failure.freezed.dart';

/// Defines different types failure that can occur when interacting with
/// the OpenSea Api
@freezed
class OpenSeaApiFailure with _$OpenSeaApiFailure {
  /// Failure that indicates use of an invalid OpenSea API key
  const factory OpenSeaApiFailure.invalidApiKey() = OpenSeaInvalidApiKey;

  /// Failure that indicates a connection timeout
  const factory OpenSeaApiFailure.connectionTimeout() =
      OpenSeaConnectionTimeout;

  /// Failure that indicates a send timeout
  const factory OpenSeaApiFailure.sendTimeout() = OpenSeaSendTimeout;

  /// Failure that indicates a receive timeout
  const factory OpenSeaApiFailure.receiveTimeout() = OpenSeaReceiveTimeout;

  /// Failure that indicates a bad certificate
  const factory OpenSeaApiFailure.badCertificate() = OpenSeaBadCertificate;

  /// Failure that indicates a bad response from the server
  const factory OpenSeaApiFailure.badResponse({required String? message}) =
      OpenSeaBadResponse;

  /// Failure that indicates the request was cancelled
  const factory OpenSeaApiFailure.cancel() = OpenSeaCancel;

  /// Failure that indicates a connection error
  const factory OpenSeaApiFailure.connectionError() = OpenSeaConnectionError;

  /// Failure that indicates an unknown error
  const factory OpenSeaApiFailure.unknown() = OpenSeaUnknown;
}
