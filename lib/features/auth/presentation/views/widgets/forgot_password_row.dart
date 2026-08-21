import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class ForgotPasswordRow extends StatelessWidget {
  const ForgotPasswordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: Styles().style14Regular.copyWith(
              color: AppColors.textHint,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.textHint,
            ),
          ),
        ),
      ],
    );
  }
}
