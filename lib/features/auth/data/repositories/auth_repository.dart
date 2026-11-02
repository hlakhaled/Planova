import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:planova/core/errors/failure.dart' show Failure;
import 'package:planova/features/auth/data/models/auth_model.dart';
import 'package:planova/features/auth/data/data_sources/remote/auth_remote_data_source.dart'; 
  
abstract class AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepository({required this.authRemoteDataSource});
  Future<Either<Failure, UserCredential>> createUserWithEmailAndPassword({
    required AuthModel authModel,
  });
}
