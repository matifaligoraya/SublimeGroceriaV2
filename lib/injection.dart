import 'package:sublime_groceria/src/data/datasource/authentication_remote_data_source.dart';
import 'package:sublime_groceria/src/data/repository/authentication_repository_impl.dart';
import 'package:sublime_groceria/src/domain/repositories/autentication_repository.dart';
import 'package:sublime_groceria/src/domain/usecase/login.dart';
import 'package:sublime_groceria/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:sublime_groceria/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';
import 'package:sublime_groceria/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  //TODO: Data sources
  final authRemoteDataSource = AuthenticationRemoteDataSourceImpl();
  locator.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => authRemoteDataSource,
  );

  // Repositories
  final authRepository = AuthenticationRepositoryImpl(locator());
  locator.registerLazySingleton<AuthenticationRepository>(
    () => authRepository,
  );

  // Use cases
  final signIn = SignIn(locator());
  locator.registerLazySingleton(
    () => signIn,
  );

  //TODO:  BLoCs
  final authenticatorWatcherBloc = AuthenticatorWatcherBloc();
  locator.registerLazySingleton(
    () => authenticatorWatcherBloc,
  );

  final signInFormBloc = SignInFormBloc(locator());
  locator.registerLazySingleton(
    () => signInFormBloc,
  );

  final themeCubit = ThemeCubit();
  locator.registerLazySingleton(
    () => themeCubit,
  );
}
