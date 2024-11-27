part of 'Religion_bloc.dart';

abstract class ReligionState {}

class Religionactionstate extends ReligionState {}

class Religionfetching extends ReligionState {
  final List<ReligionModel> religions;
  Religionfetching({required this.religions});
  factory Religionfetching.initial() => Religionfetching(
        religions: [],
      );
}

class ReligionError extends ReligionState {
  final String message;
  ReligionError({required this.message});
}
