import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/text_field_model.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.textFieldModel,
    required this.textEditingController,
    this.validator,
  });
  final TextEditingController textEditingController;
  final TextFieldModel textFieldModel;
  final FormFieldValidator<String>? validator;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value!.trim().isEmpty || value == null) {
          return "Please Enter Your ${widget.textFieldModel.hintText}";
        }
        return null;
      },
      controller: widget.textEditingController,
      obscureText: widget.textFieldModel.isPassword && !isObscure,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.textFieldModel.prefixIcon),
        prefixIconColor: AppColors.textHint,
        suffixIcon: widget.textFieldModel.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: isObscure
                    ? Icon(Icons.visibility_outlined)
                    : Icon(Icons.visibility_off_outlined),
              )
            : null,
        suffixIconColor: AppColors.textHint,
        hintText: widget.textFieldModel.hintText,
        hintStyle: Styles().style14Regular.copyWith(color: AppColors.textHint),
        border: outlineInputBorder(AppColors.grey300),
        focusedBorder: outlineInputBorder(AppColors.lavender),
        enabledBorder: outlineInputBorder(AppColors.grey300),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}
