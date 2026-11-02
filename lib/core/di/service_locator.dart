import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:planova/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:planova/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:planova/features/auth/presentation/manager/cubit/auth_cubit.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  // firebase
  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  //Data sources
  getIt.registerLazySingleton(
    () => AuthRemoteDataSource(getIt<FirebaseAuth>()),
  );

  //repositories
  getIt.registerLazySingleton(
    () => AuthRepositoryImpl(remoteDataSource: getIt<AuthRemoteDataSource>()),
  );

  //Cubits
  getIt.registerFactory(
    () => AuthCubit(authRepository: getIt<AuthRepositoryImpl>()),
  );
}
