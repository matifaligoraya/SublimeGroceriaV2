import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/grocery_list_cubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/grocerylist/grocery_list.dart';
import 'package:sublime_groceria/presentation/widget/listitem.dart';
import 'package:sublime_groceria/presentation/widget/searchbar_widget.dart';
import 'package:sublime_groceria/utilities/extensions/string_extension.dart';

class GroceryListScreen extends StatefulWidget {
  const GroceryListScreen({super.key});

  @override
  State<GroceryListScreen> createState() => _GroceryListScreenState();
}

class _GroceryListScreenState extends State<GroceryListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _searchController;

  List<GroceryList> _allMyLists = [];
  List<GroceryList> _allSharedLists = [];
  List<GroceryList> _filteredMyLists = [];
  List<GroceryList> _filteredSharedLists = [];

  int myListCounts = 0;
  int sharedListCounts = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems(String query) {
    setState(() {
      _filteredMyLists = _allMyLists
          .where((item) =>
              item.listName != null &&
              item.listName!.toLowerCase().contains(query.toLowerCase()))
          .toList();

      _filteredSharedLists = _allSharedLists
          .where((item) =>
              item.listName != null &&
              item.listName!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorLight.bg,
      appBar: AppBar(
        backgroundColor: ColorLight.bg,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.go(AppRoutes.HOME_ROUTE_PATH);
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: ColorLight.widgetsbg,
                    width: 1,
                  ),
                ),
                child: Icon(Icons.arrow_back_outlined, size: 18),
              ),
            ),
            Text(
              "View List",
              style: TextStyle(fontSize: 23, color: ColorLight.widgetstitle),
            ),
            InkWell(
              onTap: () {
                ShowDialogue(context);
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: ColorLight.widgetsbg,
                    width: 1,
                  ),
                ),
                child: Icon(Icons.help_outline, size: 16),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SearchbarWidget(
              controller: _searchController,
              onChanged: (query) {
                _filterItems(query);
              },
              hintText: 'Search here',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: ColorLight.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.tune,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<GroroceryListCubit, SublimeState<List<GroceryList>>>(
            builder: (context, state) {
              if (state is SublimeLoaded<List<GroceryList>>) {
                // Separate data into My Lists and Shared Lists
                _allMyLists = state.data
                    .where((item) => item.isSharedList == false)
                    .toList();
                _allSharedLists = state.data
                    .where((item) => item.isSharedList == true)
                    .toList();

                // Update counts
                myListCounts = _allMyLists.length;
                sharedListCounts = _allSharedLists.length;

                // Update filtered lists if no search query
                if (_searchController.text.isEmpty) {
                  _filteredMyLists = _allMyLists;
                  _filteredSharedLists = _allSharedLists;
                }
              }

              return TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: ColorLight.widgetstitle,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                labelColor: ColorLight.primary,
                indicatorColor: ColorLight.primary,
                tabs: [
                  Tab(text: 'My List ($myListCounts)'),
                  Tab(text: 'Shared List ($sharedListCounts)'),
                ],
              );
            },
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // My List Tab: Display items with isSharedList == false
                _filteredMyLists.isNotEmpty
                    ? buildList(_filteredMyLists)
                    : Center(child: Text("No items in My List.")),
                // Shared List Tab: Display items with isSharedList == true
                _filteredSharedLists.isNotEmpty
                    ? buildList(_filteredSharedLists)
                    : Center(child: Text("No items in Shared List.")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildList(List<GroceryList> groceryLists) {
    return ListView.builder(
      itemCount: groceryLists.length,
      itemBuilder: (context, index) {
        final groceryList = groceryLists[index];
        return Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 15,
          ),
          child: ListItem(
            title: groceryList.listName ?? 'Unnamed List',
            tag: '${groceryList.updatedDate?.formatRelativeTime()}',
            purchaseditems: '${groceryList.pendingItemsCount ?? 0}',
            pendingItems: '${groceryList.pendingItemsCount ?? 0} Pending',
            sharedWith: '${groceryList.isSharedList}',
          ),
        );
      },
    );
  }

  void ShowDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Help",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: ColorLight.primary,
            ),
          ),
          content: Text(
              'This is our List View screen where you can see all the lists.'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
