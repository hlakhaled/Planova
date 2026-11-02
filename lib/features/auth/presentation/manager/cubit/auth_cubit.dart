import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:planova/core/errors/failure.dart';
import 'package:planova/features/auth/data/models/auth_model.dart';
import 'package:planova/features/auth/data/repositories/auth_repository.dart';
import 'package:planova/features/auth/data/repositories/auth_repository_impl.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepositoryImpl authRepository;
  AuthCubit({required this.authRepository}) : super(AuthInitial());
  Future<void> createAccount({required AuthModel authModel}) async {
    emit(AuthLoading());
    final result = await authRepository.createUserWithEmailAndPassword(
      authModel: authModel,
    );
    result.fold(
      (failure) => emit(AuthFailure(failure: failure)),
      (userCredential) => emit(AuthSuccess()),
    );
  }
}
