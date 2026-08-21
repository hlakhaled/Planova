import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';
import 'package:planova/features/auth/presentation/views/widgets/auth_footer.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:planova/features/auth/presentation/views/widgets/forgot_password_row.dart';
import 'package:planova/features/auth/presentation/views/widgets/or_divider.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 72),
                    Text('Sign in', style: Styles().style24SemiBold),
                    SizedBox(height: 8),
                    Text(
                      'Welcome back, you’ve been missed!',
                      style: Styles().style14Regular.copyWith(
                        color: AppColors.textHint,
                      ),
                    ),
                    const SizedBox(height: 48),
                    CustomTextField(
                      textFieldModel: textFieldModel[0],
                      textEditingController: emailController,
                    ),
                    const SizedBox(height: 24),
                    CustomTextField(
                      textFieldModel: textFieldModel[1],
                      textEditingController: passwordController,
                    ),
                    const SizedBox(height: 16),
                    ForgotPasswordRow(),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(text: "Sign In"),
                    const SizedBox(height: 32),
                    OrDivider(),
                    const SizedBox(height: 32),
                    AuthFooter(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
