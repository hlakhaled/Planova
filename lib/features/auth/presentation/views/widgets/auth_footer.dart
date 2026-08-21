
import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t Have an Account ?",
          style: Styles().style14SemiBlod,
        ),
        Text(
          " Sign Up",
          style: Styles().style14SemiBlod.copyWith(
            color: AppColors.lavender,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.lavender,
          ),
        ),
      ],
    );
  }
}
