import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/sgitemcubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/item/sgitem.dart';

class SgItemScreen extends StatelessWidget {
  const SgItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SgItems'),
      ),
      body: Column(
        children: [
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

                  return ListView.builder(
                    itemCount: sgItems.length,
                    itemBuilder: (context, index) {
                      final sgItem = sgItems[index];
                      return Card(
                        elevation: 2.0,
                        margin: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: ListTile(
                          title: Text(
                            sgItem.itemName ?? 'No Name Available',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ID: ${sgItem.itemId ?? 'N/A'}'),
                              Text('Category: ${sgItem.categoryName ?? 'N/A'}'),
                              Text(
                                  'Type: ${sgItem.typeName ?? 'N/A'} (${sgItem.abbrivation ?? 'N/A'})'),
                              Text(
                                  'Description: ${sgItem.description == "//" ? "No description available" : sgItem.description ?? 'N/A'}'),
                              Text(
                                  'itemNutritionId: ${sgItem.itemNutritionId}'),
                              if (sgItem.nutration != null)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Nutration:'),
                                    Text(
                                        '- Calories: ${sgItem.nutration!.calories ?? 'Unknown'}'),
                                    Text(
                                        '- Serving Size: ${sgItem.nutration!.serving_size_g ?? 'Unknown'} g'),
                                    Text(
                                        '- Total Fat: ${sgItem.nutration!.fat_total_g ?? 'Unknown'} g'),
                                    Text(
                                        '- Saturated Fat: ${sgItem.nutration!.fat_saturated_g ?? 'Unknown'} g'),
                                    Text(
                                        '- Protein: ${sgItem.nutration!.protein_g ?? 'Unknown'} g'),
                                  ],
                                ),
                            ],
                          ),
                          leading: sgItem.fileName != null &&
                                  sgItem.fileType != null
                              ? Image.network(
                                  'https://example.com/${sgItem.fileName!}',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(Icons.broken_image),
                                )
                              : const Icon(Icons.image_not_supported),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Home Screen
                context.go(AppRoutes.HOME_ROUTE_PATH);
              },
              child: const Text('Go to Home Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
