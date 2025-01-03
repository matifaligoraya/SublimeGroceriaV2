import 'package:equatable/equatable.dart';

abstract class SublimeState<T> extends Equatable {
  @override
  List<Object?> get props => [];
}

class SublimeInitial<T> extends SublimeState<T> {}

class SublimeLoading<T> extends SublimeState<T> {}

class SublimeLoaded<T> extends SublimeState<T> {
  final Map<String, dynamic> data;
  SublimeLoaded(this.data);

  @override
  List<Object?> get props => [data];
}

class SublimeError<T> extends SublimeState<T> {
  final String? message;
  final Map<String, String?>? fieldErrors;

  SublimeError(this.message, {this.fieldErrors});

  @override
  List<Object?> get props => [message];
}
