part of 'auth_cubit.dart';

class AuthState {
  const AuthState();
}

final class AuthLoading extends AuthState {}

final class AuthFailure extends AuthState {
  final Failure failure;
  const AuthFailure({required this.failure});
}

final class AuthSuccess extends AuthState {
  const AuthSuccess();
}

final class AuthInitial extends AuthState {}
