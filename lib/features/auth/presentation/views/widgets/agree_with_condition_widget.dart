import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';
import 'package:planova/core/utils/styles.dart';

class AgreeWithConditionWidget extends StatefulWidget {
  const AgreeWithConditionWidget({super.key});

  @override
  State<AgreeWithConditionWidget> createState() =>
      _AgreeWithConditionWidgetState();
}

class _AgreeWithConditionWidgetState extends State<AgreeWithConditionWidget> {
  late bool checkBoxValue;
  @override
  void initState() {
    checkBoxValue = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: BorderSide(color: AppColors.textHint),
          activeColor: AppColors.lavender,
          value: checkBoxValue,
          onChanged: (value) {
            setState(() {
              checkBoxValue = value!;
            });
          },
        ),

        Text(
          "Agree with",
          style: Styles().style14Regular.copyWith(color: AppColors.textHint),
        ),
        Text(
          "Terms & Conditions",
          style: Styles().style14Regular.copyWith(
            color: AppColors.lavender,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.lavender,
          ),
        ),
      ],
    );
  }
}
