import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/sgitemcubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/presentation/widget/items.dart';
import 'package:sublime_groceria/presentation/widget/searchbar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SgItemScreen extends StatelessWidget {
  const SgItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              "Bulk Item",
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
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: SearchbarWidget(
                controller: TextEditingController(),
                onChanged: (query) {
                  print("Search query: $query");
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
            Expanded(
              child: BlocBuilder<SgItemCubit, SublimeState<List<SgItem>>>(
                builder: (context, state) {
                  if (state is SublimeLoading<List<SgItem>>) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is SublimeLoaded<List<SgItem>>) {
                    final sgItems = state.data
                        .where((item) => item.itemNutritionId != null)
                        .toList();

                    return GridView.builder(
                        itemCount: sgItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          // mainAxisSpacing: -5,
                          childAspectRatio: 0.68,
                        ),
                        itemBuilder: (BuildContext, index) {
                          final SgItem = sgItems[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SuggestedItems(
                                  title: '${SgItem.itemName}',
                                  image: '${SgItem.fileName}',
                                ),
                              ],
                            ),
                          );
                        });
                  } else if (state is SublimeError<List<SgItem>>) {
                    return Center(
                      child: Text(
                        'Error: ${state.message}',
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text('No data available.'),
                    );
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: InkWell(
                        onTap: () {
                          context.go(AppRoutes.HOME_ROUTE_PATH);
                        },
                        child: Container(
                          height: 48,
                          width: 176,
                          decoration: BoxDecoration(
                              color: ColorLight.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 35,
                                width: 35,
                                child: SvgPicture.asset(
                                  'assets/icons/icons_for_add.svg',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Add Items',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: InkWell(
                        onTap: () {
                          context.go(AppRoutes.HOME_ROUTE_PATH);
                        },
                        child: Container(
                          height: 48,
                          width: 176,
                          decoration: BoxDecoration(
                              color: ColorLight.buttons,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 35,
                                width: 35,
                                child: SvgPicture.asset(
                                  'assets/icons/icons_for_add.svg',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Add Recipe',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void ShowDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          "Title",
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
