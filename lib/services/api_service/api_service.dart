/*
 * ApiService
 * Author: Pablo Fuertes
 * Purpose: Provides generic HTTP methods for API calls.
 * Usage: Injected via Riverpod, used by providers/services for network requests.
 * ! Do not place business logic here; only networking logic.
 */
import 'package:dio/dio.dart';

/// ApiService provides generic HTTP methods for API calls.
class ApiService {
  final Dio _dio;

  /// Creates an [ApiService] with the given [Dio] instance.
  ApiService(this._dio);

  /// Generic GET request.
  /// [path]: The endpoint path.
  /// [queryParameters]: Optional query parameters.
  /// Returns a [Response] containing the data.
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.get<T>(path, queryParameters: queryParameters);
  }

  /// Generic POST request.
  /// [path]: The endpoint path.
  /// [data]: The request body.
  /// Returns a [Response] containing the data.
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
  }) async {
    return await _dio.post<T>(path, data: data);
  }

  // Add put, delete, etc. as needed.
}