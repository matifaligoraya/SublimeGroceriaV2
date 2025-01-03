import 'package:sublime_groceria/common/api.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/repositories/sublimebaserepository.dart';

class SgItemRepository extends SublimeBaseRepository {
  SgItemRepository() : super();

  Future<List<SgItem>> fetchgroceryitems() async {
    // userId = await fetchUserId();
    String url = '${Uri.parse(ApiConfig.TOP5ITEMS)}';
    final response = await get(url: url, queryParams: null);

    if (response['isList'] == true && response['data'] != null) {
      final List<dynamic> rawdata = response['data'];
      var responsedata = rawdata
          .map((item) => SgItem.fromJson(item as Map<String, dynamic>))
          .toList();
      return responsedata;
    } else {
      final String errormessage = response['message'] ?? 'There is no item';
      throw Exception(errormessage);
    }
  }
}
