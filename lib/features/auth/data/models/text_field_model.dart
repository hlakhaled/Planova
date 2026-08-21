import 'package:flutter/material.dart';

class TextFieldModel {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;

 const TextFieldModel({
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
  });
}