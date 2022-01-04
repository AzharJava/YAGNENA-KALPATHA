import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color splashColor;
  final BorderRadius borderRadius;
  final Color borderSideColor;

  const CustomButton({
    required this.onTap,
    required this.text,
    required this.buttonColor,
    required this.borderRadius,
    required this.textColor,
    required this.splashColor,
    required this.borderSideColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 50,
          width: 150,
          child: RaisedButton(
            color: buttonColor,
            onPressed: onTap,
            child: Text(text),
            splashColor: splashColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
              side: BorderSide(color: borderSideColor),
            ),
            textColor: textColor,
          ),
        ));
  }
}
