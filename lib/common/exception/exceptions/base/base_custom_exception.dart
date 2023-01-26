class CustomException implements Exception {
  final String? message;
  final Function? callback;

  CustomException({
    this.message,
    this.callback,
  });
}
