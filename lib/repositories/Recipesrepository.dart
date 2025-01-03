import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/models/Recipes/recipes.dart';
import 'package:sublime_groceria/repositories/sublimebaserepository.dart';

class RecipesRepository extends SublimeBaseRepository {
  RecipesRepository() : super();

  Future<List<Recipes>> fetchrecipes() async {
    String url = '${Uri.parse(ApiConfig.GRECIPES)}';
    final response = await get(url: url, queryParams: null);
    print(response);

    if (response['isList'] == true && response['data'] != null) {
      final List<dynamic> rawdata = response['data'];
      var responsedata = rawdata
          .map((item) => Recipes.fromJson(item as Map<String, dynamic>))
          .toList();
      return responsedata;
    } else {
      final String errormessage =
          response['message'] ?? 'There are no recipes available.';
      throw Exception(errormessage);
    }
  }
}
