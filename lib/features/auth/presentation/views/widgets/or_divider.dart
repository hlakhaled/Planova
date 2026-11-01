import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 1.5, color: AppColors.grey400)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("or", style: Styles().style18Medium),
        ),
        Expanded(child: Divider(thickness: 1.5, color: AppColors.grey400)),
      ],
    );
  }
}
