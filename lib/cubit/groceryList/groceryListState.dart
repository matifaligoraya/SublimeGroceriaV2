import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';

abstract class GroceryListState extends SublimeState<List<GroceryList>> {}

class GroceryListInitial extends GroceryListState {}

class GroceryListLoading extends GroceryListState {}

class GroceryListLoaded extends GroceryListState {
  final List<GroceryList> myLists;
  final List<GroceryList> sharedLists;

  GroceryListLoaded(this.myLists, this.sharedLists);

  @override
  List<Object?> get props => [myLists, sharedLists];
}

class GroceryListError extends GroceryListState {
  final String message;

  GroceryListError(this.message);

  @override
  List<Object?> get props => [message];
}
