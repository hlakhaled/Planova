import 'package:flutter/material.dart';
import 'package:planova/features/auth/presentation/views/widgets/auth_footer.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:planova/features/auth/presentation/views/widgets/or_divider.dart';

class AuthActionSection extends StatelessWidget {
  const AuthActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(text: "Sign In"),
        SizedBox(height: 32),
        OrDivider(),
        SizedBox(height: 32),
        AuthFooter(),
        SizedBox(height: 40),
      ],
    );
  }
}
