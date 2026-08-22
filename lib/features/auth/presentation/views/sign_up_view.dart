import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/auth_footer_model.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';
import 'package:planova/features/auth/presentation/views/widgets/agree_with_condition_widget.dart';
import 'package:planova/features/auth/presentation/views/widgets/auth_action_section.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  void initState() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  final List<TextFieldModel> textFieldModel = const [
    TextFieldModel(hintText: "Username", prefixIcon: Icons.alternate_email),
    TextFieldModel(hintText: "Email Address", prefixIcon: Icons.email_outlined),

    TextFieldModel(
      hintText: "Password",
      prefixIcon: Icons.lock_outline,
      isPassword: true,
    ),
    TextFieldModel(
      hintText: "Confirm Password",
      prefixIcon: Icons.lock_outline,
      isPassword: true,
    ),
  ];

  void _handleSignUp() {
    if (globalKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: globalKey,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 72),
                      Text('Sign Up', style: Styles().style24SemiBold),
                      SizedBox(height: 8),
                      Text(
                        'Create new account to get Started',
                        style: Styles().style14Regular.copyWith(
                          color: AppColors.textHint,
                        ),
                      ),
                      const SizedBox(height: 48),
                      CustomTextField(
                        textFieldModel: textFieldModel[0],
                        textEditingController: usernameController,
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        textFieldModel: textFieldModel[1],
                        textEditingController: emailController,
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        textFieldModel: textFieldModel[2],
                        textEditingController: passwordController,
                      ),
                      const SizedBox(height: 24),
                      CustomTextField(
                        textFieldModel: textFieldModel[3],
                        textEditingController: confirmPasswordController,
                      ),
                      const SizedBox(height: 16),

                      AgreeWithConditionWidget(),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: AuthActionSection(
                    authFooterModel: const AuthFooterModel(
                      actionText: "Sign In",
                      message: "Already Have an Account? ",
                    ),
                    buttonText: "Sign Up",
                    onPressed: () {
                      _handleSignUp();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
