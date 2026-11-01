import 'package:go_router/go_router.dart';
import 'package:planova/features/auth/presentation/views/change_password_view.dart';
import 'package:planova/features/auth/presentation/views/reset_password_view.dart';
import 'package:planova/features/auth/presentation/views/sign_in_view.dart';
import 'package:planova/features/auth/presentation/views/verify_code_view.dart';

class AppRouter {
  static final signUp = "/signUp";
  static final signIn = "/signIn";
  static final resetPassword = "/resetPassword";
  static final changePassword = "/changePassword";
  static final verifyCode = "/verifyCode";
  static final router = GoRouter(
    initialLocation: verifyCode,
    routes: [
      GoRoute(path: signIn, builder: (context, state) => const SignInView()),
      GoRoute(path: signUp, builder: (context, state) => const SignInView()),
      GoRoute(
        path: resetPassword,
        builder: (context, state) => ResetPasswordView(),
      ),
      GoRoute(
        path: changePassword,
        builder: (context, state) => const ChangePasswordView(),
      ),
      GoRoute(
        path: verifyCode,
        builder: (context, state) => const VerifyCodeView(),
      ),
    ],
  );
}
