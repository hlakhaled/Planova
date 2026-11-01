import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:verification_code_field/verification_code_field.dart';

class VerificationCodeInput extends StatelessWidget {
  final VerificationCodeController controller;

  const VerificationCodeInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return VerificationCodeField(
      controller: controller,
      codeDigit: CodeDigit.five,
      autoFocus: true,
      fieldSize: 56,
      border: _customBorder(AppColors.textMuted),
      focusedBorder: _customBorder(AppColors.lavender),
      textStyle: Styles().style20Bold.copyWith(color: AppColors.black),
    );
  }

  OutlineInputBorder _customBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }
}
