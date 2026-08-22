import 'package:flutter/material.dart';
import 'package:planova/features/auth/data/models/auth_footer_model.dart';
import 'package:planova/features/auth/presentation/views/widgets/auth_footer.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:planova/features/auth/presentation/views/widgets/or_divider.dart';

class AuthActionSection extends StatelessWidget {
  const AuthActionSection({
    super.key,
    required this.authFooterModel,
    required this.buttonText,
    required this.onPressed,
  });
  final AuthFooterModel authFooterModel;
  final String buttonText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(text: buttonText, onPressed: onPressed),
        SizedBox(height: 32),
        OrDivider(),
        SizedBox(height: 32),
        AuthFooter(authFooterModel: authFooterModel),
        SizedBox(height: 40),
      ],
    );
  }
}
