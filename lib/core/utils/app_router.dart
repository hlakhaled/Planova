import 'package:go_router/go_router.dart';
import 'package:planova/features/auth/presentation/views/sign_in_view.dart';

class AppRouter {
  static final signUp = "/signUp";
  static final signIn = "/signIn";

  static final router = GoRouter(
    initialLocation: signIn,
    routes: [
      GoRoute(path: signIn, builder: (context, state) => const SignInView()),
      GoRoute(path: signUp, builder: (context, state) => const SignInView()),
    ],
  );
}
