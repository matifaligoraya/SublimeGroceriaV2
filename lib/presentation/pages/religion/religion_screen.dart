import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sublime_groceria/cubit/religion/religion_cubit.dart';
import 'package:sublime_groceria/cubit/sublime_state.dart';
import 'package:sublime_groceria/models/religion.dart';

class ReligionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Religions'),
      ),
      body: BlocBuilder<ReligionCubit, SublimeState<List<Religion>>>(
        builder: (context, state) {
          if (state is SublimeLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SublimeLoaded<List<Religion>>) {
            final religions = state.data;
            return ListView.builder(
              itemCount: religions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(religions[index].name),
                );
              },
            );
          } else if (state is SublimeError<List<Religion>>) {
            return Center(child: Text('Error: ${state..message}'));
          } else {
            return const Center(child: Text('No data available.'));
          }
        },
      ),
    );
  }
}
