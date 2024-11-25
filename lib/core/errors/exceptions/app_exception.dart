class AppException<T> implements Exception {
  final String? message;
  final T? body;
  const AppException({
    this.message,
    this.body,
  });
}
