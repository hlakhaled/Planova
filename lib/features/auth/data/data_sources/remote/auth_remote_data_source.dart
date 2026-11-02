import 'package:firebase_auth/firebase_auth.dart';
import 'package:planova/features/auth/data/models/auth_model.dart';

class AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSource(this.firebaseAuth);

  Future<UserCredential> createUserWithEmailAndPassword({
    required AuthModel authModel,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: authModel.email,
      password: authModel.password,
    );
  }
}
