/*
 * NetworkExceptions
 * Author: Pablo Fuertes
 * Purpose: Centralizes network error handling and parsing.
 * Usage: Used by ApiService and providers to standardize error responses.
 */
import 'package:dio/dio.dart';

/// NetworkExceptions provides standardized error messages for network errors.
class NetworkExceptions {
  /// Returns a user-friendly error message for the given [error].
  static String getErrorMessage(Object error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return 'Connection timeout';
        case DioExceptionType.sendTimeout:
          return 'Send timeout';
        case DioExceptionType.receiveTimeout:
          return 'Receive timeout';
        case DioExceptionType.badResponse:
          return 'Received invalid status: ${error.response?.statusCode}';
        case DioExceptionType.cancel:
          return 'Request cancelled';
        case DioExceptionType.unknown:
        default:
          return 'Unexpected error occurred';
      }
    }
    return error.toString();
  }
}