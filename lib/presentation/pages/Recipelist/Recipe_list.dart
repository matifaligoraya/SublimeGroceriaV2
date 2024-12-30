import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/colors.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/sgitemcubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';
import 'package:sublime_groceria/presentation/widget/recipe.dart';
import 'package:sublime_groceria/presentation/widget/searchbar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
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
                child: const Icon(Icons.arrow_back_outlined, size: 18),
              ),
            ),
            const Text(
              "Recipe Integration",
              style: TextStyle(fontSize: 23, color: ColorLight.widgetstitle),
            ),
            GestureDetector(
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
                child: const Icon(Icons.help_outline, size: 16),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SearchbarWidget(
                controller: TextEditingController(),
                onChanged: (query) {
                  // Print("Search query: $query");
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
                    child: const Icon(
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
                      child: CircularProgressIndicator(
                        color: ColorLight.primary,
                      ),
                    );
                  } else if (state is SublimeLoaded<List<SgItem>>) {
                    final sgItems = state.data['totalCount'] as List<SgItem>;

                    return ListView.builder(
                      itemCount: sgItems.length,
                      itemBuilder: (context, index) {
                        final list = sgItems[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Recipeintegration(
                            image: 'assets/images/recipe2.png',
                            title: 'This is title',
                            proteins: 'Protein',
                            fats: 'Fats',
                            carbohydrates: 'Carbohydrates',
                            likes: 'Likes',
                            time: 'Times',
                          ),
                        );
                      },
                    );
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildActionButton(
                    context,
                    onTap: () => context.go(AppRoutes.HOME_ROUTE_PATH),
                    color: ColorLight.primary,
                    label: 'Add Items',
                    icon: 'assets/icons/icons_for_add.svg',
                  ),
                  _buildActionButton(
                    context,
                    onTap: () => context.go(AppRoutes.HOME_ROUTE_PATH),
                    color: ColorLight.buttons,
                    label: 'Add Recipe',
                    icon: 'assets/icons/icons_for_add.svg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required VoidCallback onTap,
    required Color color,
    required String label,
    required String icon,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48,
          width: 176,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: SvgPicture.asset(
                  icon,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 7),
              Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
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
        title: const Text(
          "Help",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorLight.primary,
          ),
        ),
        content: const Text(
          'This is our List View screen where you can see all the lists.',
        ),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
