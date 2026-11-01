import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/presentation/views/widgets/bottom_action_button.dart';
import 'package:planova/features/auth/presentation/views/widgets/verification_code_input.dart';
import 'package:planova/features/auth/presentation/views/widgets/verification_email_text.dart';
import 'package:verification_code_field/verification_code_field.dart';

class VerifyCodeView extends StatefulWidget {
  const VerifyCodeView({super.key});

  @override
  State<VerifyCodeView> createState() => _VerifyCodeViewState();
}

class _VerifyCodeViewState extends State<VerifyCodeView> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = VerificationCodeController();
  void _handleVerifyCode() {
    if (!_formKey.currentState!.validate()) return;
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 72),
                      Text('Verify Code', style: Styles().style24SemiBold),
                      const SizedBox(height: 16),
                      const VerificationEmailText(email: "example@gmail.com"),
                      const SizedBox(height: 64),
                      VerificationCodeInput(controller: _codeController),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn’t receive an OTP? ",
                            style: Styles().style14SemiBlod,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Resend OTP',
                              style: Styles().style14SemiBlod.copyWith(
                                color: AppColors.lavender,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                BottomActionButton(
                  title: "Verify",
                  onPressed: () {
                    _handleVerifyCode();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
