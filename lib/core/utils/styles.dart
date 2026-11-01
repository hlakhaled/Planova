import 'package:flutter/material.dart';
import 'package:planova/core/utils/app_colors.dart';

class Styles {
  TextStyle get style24SemiBold => const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: AppColors.primary,
  );

  TextStyle get style12SemiBold => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: AppColors.textHint,
  );
  TextStyle get style14Regular => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
  );
  TextStyle get style14Medium => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: AppColors.textHint,
  );
  TextStyle get style14SemiBlod => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textHint,
    fontFamily: 'Poppins',
  );
  TextStyle get style18Medium => const TextStyle(
    fontSize: 18,
    color: AppColors.grey700,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
  );
  TextStyle get style20Bold => const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins',
  );
}
