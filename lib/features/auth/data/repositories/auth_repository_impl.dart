import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:planova/core/errors/failure.dart';
import 'package:planova/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:planova/features/auth/data/models/auth_model.dart';
import 'package:planova/features/auth/data/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource,})
    : super(authRemoteDataSource: remoteDataSource);

  @override
  Future<Either<Failure, UserCredential>> createUserWithEmailAndPassword({
    required AuthModel authModel,
  }) async {
    try {
      final credential = await remoteDataSource.createUserWithEmailAndPassword(
        authModel: authModel,
      );

      return Right(credential);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(_mapFirebaseError(e.code)));
    } catch (_) {
      return const Left(Failure('Something went wrong. Please try again.'));
    }
  }

  String _mapFirebaseError(String code) {
    switch (code) {
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'An account already exists with this email.';
      case 'invalid-email':
        return 'Please enter a valid email address.';
      case 'network-request-failed':
        return 'Please check your internet connection.';
      default:
        return 'Registration failed. Please try again.';
    }
  }
}
