import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  final List<TextFieldModel> textFieldModel = const [
    TextFieldModel(hintText: "Email Address", prefixIcon: Icons.email_outlined),
    TextFieldModel(
      hintText: "Password",
      prefixIcon: Icons.lock_outline,
      isPassword: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 72),
              Text('Sign in', style: Styles().style24SemiBold),
              SizedBox(height: 8),
              Text(
                'Welcome back, you’ve been missed!',
                style: Styles().style14Regular.copyWith(
                  color: AppColors.textHint,
                ),
              ),
              SizedBox(height: 48),
              CustomTextField(textFieldModel: textFieldModel[0]),
              SizedBox(height: 24),
              CustomTextField(textFieldModel: textFieldModel[1]),
            ],
          ),
        ),
      ),
    );
  }
}
