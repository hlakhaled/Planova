import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textFieldModel});

  final TextFieldModel textFieldModel;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(textFieldModel.prefixIcon),
        prefixIconColor: AppColors.textHint,
        suffixIcon: textFieldModel.isPassword
            ? Icon(Icons.remove_red_eye_outlined)
            : null,
        suffixIconColor: AppColors.textHint,
        hintText: textFieldModel.hintText,
        hintStyle: Styles().style14Regular.copyWith(color: AppColors.textHint),
        border: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.grey300),
    );
  }
}
