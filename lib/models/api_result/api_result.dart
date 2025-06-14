/*
 * ApiResult
 * Author: Pablo Fuertes
 * Purpose: Represents the result of an API call (success, error, loading).
 * Usage: Used by providers to expose API state.
 */
/// ApiResult is a sealed class representing API call states.
class ApiResult<T> {
  final T? data;
  final Object? error;
  final bool isLoading;

  /// Success state with [data].
  ApiResult.success(this.data)
      : error = null,
        isLoading = false;

  /// Error state with [error].
  ApiResult.error(this.error)
      : data = null,
        isLoading = false;

  /// Loading state.
  ApiResult.loading()
      : data = null,
        error = null,
        isLoading = true;
}