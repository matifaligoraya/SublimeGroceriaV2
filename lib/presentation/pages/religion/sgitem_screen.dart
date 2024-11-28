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
                  final SgItems = state.data;
                  return ListView.builder(
                    itemCount: SgItems.length,
                    itemBuilder: (context, index) {
                      final SgItem = SgItems[index];
                      return ListTile(
                        title: Text(SgItem.itemName),
                        subtitle: Text('ID: ${SgItem.itemId}'),
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
