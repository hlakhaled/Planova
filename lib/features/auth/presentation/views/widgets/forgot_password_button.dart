import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: Styles().style14Regular.copyWith(
            color: AppColors.textHint,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.textHint,
            decorationThickness: 1.5,
          ),
        ),
      ),
    );
  }
}