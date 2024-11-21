import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:sublime_groceria/src/common/api.dart';
// import 'package:sublime_groceria/src/presentation/Models/religion.dart';

// class Religionapi {
//   Future<List<Religion>> getreligion() async {
//     var response = await http.get(Uri.parse(API.RELIGIONLIST));

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body) as List;
//       return data.map((item) => Religion.fromJson(item)).toList();
//     } else {
//       throw Exception('Failed to load religion list');
//     }
//   }
// }

import 'package:sublime_groceria/src/presentation/Models/religion.dart';
import 'package:http/http.dart' as http;
import 'package:sublime_groceria/src/common/api.dart';
import 'package:sublime_groceria/src/presentation/Models/religion.dart';

Future<List<Religion>> getReligion() async {
  try {
    print('Fetching religions from API...');
    final response =
        await http.get(Uri.parse('https://your-api-url.com/religions'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      print('API Response: $jsonResponse');

      final List<dynamic>? data = jsonResponse['data'];
      if (data == null) {
        throw Exception('The "data" key is null or missing in the response');
      }

      final result = data.map((e) => Religion.fromJson(e)).toList();
      print('Parsed Religions: $result');
      return result;
    } else {
      throw Exception('Failed to load religions: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching religions: $e');
    // Rethrow the error to be caught by FutureBuilder
    throw Exception('Api error: $e');
  }
}
