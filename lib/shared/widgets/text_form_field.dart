import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/borders.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';
import 'package:yagnena_kalpatha/constants/radii.dart';
import 'package:yagnena_kalpatha/shared/validation/validator.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String lableText;
  final Widget prefixIcon;
  final FormFieldValidator<String> validator;
  final bool obSecureText;
  final TextInputType keyboardType;
  final Color focusBorderColor;
  final Function onSubmitField;
  final Function onFieldTap;
  final Color erroBorderColor;

  const InputField({
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.lableText,
    required this.obSecureText,
    required this.onFieldTap,
    required this.onSubmitField,
    required this.prefixIcon,
    required this.focusBorderColor,
    required this.erroBorderColor,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          labelText: lableText,
          border: OutlineInputBorder(
            borderRadius: Radii.textBoxRadius,
            borderSide: BorderSide(color: AppColors.grey),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusBorderColor)),
          prefixIcon: prefixIcon,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: erroBorderColor))),
      obscureText: obSecureText,
      keyboardType: keyboardType,
      controller: controller,
      cursorColor: AppColors.white,
      validator: validator,
    );
  }
}
