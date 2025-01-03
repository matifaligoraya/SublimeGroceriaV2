import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sublime_groceria/common/routes.dart';
import 'package:sublime_groceria/cubit/religion/religion_cubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/religion.dart';

class ReligionScreen extends StatelessWidget {
  const ReligionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Religions'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ReligionCubit, SublimeState<List<Religion>>>(
              builder: (context, state) {
                if (state is SublimeLoading<List<Religion>>) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is SublimeLoaded<List<Religion>>) {
                  final religions = state.data;
                  return ListView.builder(
                    itemCount: religions.length,
                    itemBuilder: (context, index) {
                      final religion = religions[index];
                      return ListTile(
                        title: Text(religion.name),
                        subtitle: Text('ID: ${religion.id}'),
                      );
                    },
                  );
                } else if (state is SublimeError<List<Religion>>) {
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
