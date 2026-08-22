import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text,required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.lavender),
      onPressed:onPressed, 
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(
           text,
            style: Styles().style20Bold.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
