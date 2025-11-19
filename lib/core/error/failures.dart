import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.serverFailure({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory Failure.cacheFailure({
    required String message,
  }) = CacheFailure;

  const factory Failure.validationFailure({
    required String message,
    Map<String, String>? errors,
  }) = ValidationFailure;

  const factory Failure.unauthorizedFailure({
    required String message,
  }) = UnauthorizedFailure;

  const factory Failure.unknownFailure({
    required String message,
  }) = UnknownFailure;
}

extension FailureExtension on Failure {
  String get errorMessage {
    return when(
      serverFailure: (message, statusCode) => message,
      networkFailure: (message) => message,
      cacheFailure: (message) => message,
      validationFailure: (message, errors) => message,
      unauthorizedFailure: (message) => message,
      unknownFailure: (message) => message,
    );
  }
}
