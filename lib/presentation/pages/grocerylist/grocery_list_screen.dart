import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/groceryList/grocery_list_cubit.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _searchController = TextEditingController();
    context.read<GroroceryListCubit>()..fetchItems();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => context.go(AppRoutes.HOME_ROUTE_PATH),
              child: _buildIcon(Icons.arrow_back_outlined, 18),
            ),
            Text(
              "View List",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            InkWell(
              onTap: () => _showHelpDialog(context),
              child: _buildIcon(Icons.help_outline, 16),
            ),
          ],
        ),
      ),
      body: BlocBuilder<GroroceryListCubit, SublimeState<List<GroceryList>>>(
          builder: (context, state) {
        if (state is SublimeLoading<List<GroceryList>>) {
          return Center(
              child: CircularProgressIndicator(color: ColorLight.primary));
        }
        if (state is SublimeError<List<GroceryList>>) {
          return Center(
              child: Text(state.message!,
                  style: TextStyle(color: Colors.red, fontSize: 16)));
        }
        if (state is SublimeLoaded<List<GroceryList>>) {
          final cubit = context.read<GroroceryListCubit>();
          final myLists = (state.data["MyLists"] as List<GroceryList>?) ?? [];
          final sharedLists =
              (state.data["SharedLists"] as List<GroceryList>?) ?? [];
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: SearchbarWidget(
                  controller: _searchController,
                  onChanged: (query) => {},
                  hintText: 'Search here',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {
                          _showFilterOptions(context);
                        },
                        child: Icon(
                          Icons.tune,
                          color: ColorLight.bg,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Theme.of(context).disabledColor,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                labelColor: Theme.of(context).primaryColor,
                indicatorColor: Theme.of(context).primaryColor,
                tabs: [
                  Tab(text: 'My List (${state.data["MyListsCount"]})'),
                  Tab(text: 'Shared List (${state.data["SharedListsCount"]})'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildListView(myLists, "My List"),
                    _buildListView(sharedLists, "Shared List"),
                  ],
                ),
              ),
            ],
          );
        }
        return Center(child: Text("No data available."));
      }),
    );
  }

  Widget _buildListView(List<GroceryList> lists, String emptyMessage) {
    return ListView.builder(
      itemCount: lists.length,
      itemBuilder: (context, index) {
        final list = lists[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: ListItem(
            title: list.listName ?? 'Unnamed List',
            tag: '${list.updatedDate?.formatRelativeTime() ?? 12}',
            purchaseditems: '${list.pendingItemsCount ?? 0}',
            pendingItems: '${list.pendingItemsCount ?? 0}',
            sharedWith: '${list.sharedUserCount}',
            onChanged: (message) {
              print("onChanged $message");
            },
          ),
        );
      },
    );
  }

  Widget _buildIcon(IconData icon, double size) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Theme.of(context).indicatorColor,
          width: 1,
        ),
      ),
      child: Icon(
        icon,
        size: size,
        color: Theme.of(context).indicatorColor,
      ),
    );
  }

  void _showHelpDialog(BuildContext context) {
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
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}

void _showFilterOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15),
      ),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(15),
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Filter Options',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.filter_list),
                    title: Text('Option 1'),
                    onTap: () {
                      Navigator.of(context).pop(); // Close the bottom sheet
                      // Handle Option 1 click
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.filter_list),
                    title: Text('Option 2'),
                    onTap: () {
                      Navigator.of(context).pop(); // Close the bottom sheet
                      // Handle Option 2 click
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.filter_list),
                    title: Text('Option 3'),
                    onTap: () {
                      Navigator.of(context).pop(); // Close the bottom sheet
                      // Handle Option 3 click
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
