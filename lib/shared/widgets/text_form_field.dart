import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/shared/validation/validator.dart';

InputTextField(
    String hintText,
    Function(String?)? validate,
    String lableText,
    TextEditingController controller,
    bool obsecureText,
    TextInputType textInputType,
    bool? customValidator) {
  return TextFormField(
    obscureText: obsecureText,
    keyboardType: textInputType,
    validator: (val) =>
        _getValidator(val, customValidator, (p0) => null, hintText),
    decoration: InputDecoration(
        hintText: hintText,
        labelText: lableText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
  );
}

String? _getValidator(String? val, bool? customValidator,
    String? Function(String?)? validator, String? hintText) {
  if (customValidator != null) {
    if (customValidator) return validator!(val);
    return Validator.checkIsEmpty(val) ? hintText : null;
  }
}
