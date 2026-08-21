import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.textFieldModel,
    required this.textEditingController,
  });
  final TextEditingController textEditingController;
  final TextFieldModel textFieldModel;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: widget.textEditingController,
      obscureText: widget.textFieldModel.isPassword && !isPressed,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.textFieldModel.prefixIcon),
        prefixIconColor: AppColors.textHint,
        suffixIcon: widget.textFieldModel.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                icon: isPressed
                    ? Icon(Icons.visibility_outlined)
                    : Icon(Icons.visibility_off_outlined),
              )
            : null,
        suffixIconColor: AppColors.textHint,
        hintText: widget.textFieldModel.hintText,
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
