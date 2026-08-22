import 'package:flutter/material.dart';
import 'package:planova/features/auth/presentation/views/sign_in_view.dart';
import 'package:planova/features/auth/presentation/views/sign_up_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignUpView(),
    );
  }
}
