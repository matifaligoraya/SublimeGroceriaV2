// import 'package:sublime_groceria/common/apiException.dart';

// class SublimeErrorModel {
//   final String message;
//   final String? code;
//   final String? details;
//   final DateTime timestamp;

//   SublimeErrorModel({
//     required this.message,
//     this.code,
//     this.details,
//   }) : timestamp = DateTime.now();

//   @override
//   String toString() {
//     return 'Error: $message, Code: $code, Details: $details, Timestamp: $timestamp';
//   }
// }

// class ErrorHandler {
//   List<SublimeErrorModel> errors = [];

//   void addError(String message, {String? code, String? details}) {
//     errors.add(SublimeErrorModel(
//       message: message,
//       code: code,
//       details: details,
//     ));
//   }

//   void throwError() {
//     if (errors.isNotEmpty) {
//       throw new ApiException("Validation errors occured", fieldErrors: errors);
//     }
//   }
// }
