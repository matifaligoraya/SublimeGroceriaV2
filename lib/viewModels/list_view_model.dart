import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';

class ListViewModel {
  List<GroceryList>? myLists = []; // My Lists (isSharedList == false)
  List<GroceryList>? sharedLists = []; // Shared Lists (isSharedList == true)

  ListViewModel({this.myLists, this.sharedLists});
}
