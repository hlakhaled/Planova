import 'package:flutter/material.dart';
import 'package:planova/features/auth/presentation/views/widgets/custom_button.dart';

class BottomActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const BottomActionButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 57,
            child: CustomButton(
              text: title,
              onPressed: onPressed,
            ),
          ),
        ),
      ),
    );
  }
}