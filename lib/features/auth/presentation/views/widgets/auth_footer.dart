import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';
import 'package:planova/features/auth/data/models/auth_footer_model.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key, required this.authFooterModel});
  final AuthFooterModel authFooterModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(authFooterModel.message, style: Styles().style14SemiBlod),
        InkWell(
          onTap: () {},
          child: Text(
            authFooterModel.actionText,
            style: Styles().style14SemiBlod.copyWith(
              color: AppColors.lavender,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.lavender,
            ),
          ),
        ),
      ],
    );
  }
}
