import 'package:flutter/material.dart';

class TextFieldModel {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final bool isprefixIcon;

  const TextFieldModel({
    required this.hintText,
    this.prefixIcon = Icons.person_outline,
    this.isPassword = false,
    this.isprefixIcon = true,
  });
}
