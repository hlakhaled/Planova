import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class VerificationEmailText extends StatelessWidget {
  final String email;

  const VerificationEmailText({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Please enter the code we just sent to',
          style: Styles().style14Medium,
        ),
        Text(
          email,
          style: Styles().style14Medium.copyWith(
            color: AppColors.lavender,
          ),
        ),
      ],
    );
  }
}