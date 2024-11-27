import 'package:equatable/equatable.dart';

abstract class SublimeState<T> extends Equatable {
  @override
  List<Object?> get props => [];
}

class SublimeInitial<T> extends SublimeState<T> {}

class SublimeLoading<T> extends SublimeState<T> {}

class SublimeLoaded<T> extends SublimeState<T> {
  final T data;

  SublimeLoaded(this.data);

  @override
  List<Object?> get props => [data];
}

class SublimeError<T> extends SublimeState<T> {
  final String message;

  SublimeError(this.message);

  @override
  List<Object?> get props => [message];
}
