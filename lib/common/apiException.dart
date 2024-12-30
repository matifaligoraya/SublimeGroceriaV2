class ApiException implements Exception {
  final String message;
  final Map<String, String?>? fieldErrors;
  final int? statusCode;

  ApiException(this.message, {this.statusCode, this.fieldErrors});

  @override
  String toString() {
    return statusCode != null ? 'Error $statusCode: $message' : message;
  }
}
