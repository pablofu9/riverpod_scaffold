/*
 * ApiProvider
 * Author: Pablo Fuertes
 * Purpose: Exposes API service via Riverpod for dependency injection.
 * Usage: Used by feature providers to access API methods.
 */
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/api_service/api_service.dart';
import 'package:dio/dio.dart';

/// Provides a singleton Dio instance.
final dioProvider = Provider<Dio>((ref) => Dio());

/// Provides a singleton ApiService instance.
final apiServiceProvider = Provider<ApiService>(
  (ref) => ApiService(ref.watch(dioProvider)),
);