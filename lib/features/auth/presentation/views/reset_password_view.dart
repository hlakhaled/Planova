import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';
import 'package:planova/features/auth/presentation/views/widgets/bottom_action_button.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_text_field.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  late TextEditingController emailController;

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  void initState() {
    emailController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  final TextFieldModel textFieldModel = TextFieldModel(
    hintText: "example@gmail.com",
    prefixIcon: Icons.email_outlined,
  );

  void _handleRestetPassword() {
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
                        textFieldModel: textFieldModel,
                        textEditingController: emailController,
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                BottomActionButton(
                  title: "Sent OTP",
                  onPressed: _handleRestetPassword,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
