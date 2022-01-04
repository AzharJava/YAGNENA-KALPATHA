import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';
import 'package:yagnena_kalpatha/constants/strings.dart';
import 'package:yagnena_kalpatha/screens/widgets/intro_screen.dart';
import 'package:yagnena_kalpatha/shared/validation/validator.dart';
import 'package:yagnena_kalpatha/shared/widgets/custom_button.dart';
import 'package:yagnena_kalpatha/shared/widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              elevation: 5,
              color: AppColors.warm_grey,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SIGN IN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InputField(
                      controller: email,
                      hintText: "Enter Email here....",
                      keyboardType: TextInputType.emailAddress,
                      lableText: "Email",
                      obSecureText: false,
                      onFieldTap: () {},
                      onSubmitField: () {},
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      focusBorderColor: Colors.black,
                      erroBorderColor: AppColors.emergencyColor,
                      validator: (String? value) {
                        Validator.checkEmail(email: email.text);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputField(
                      controller: email,
                      hintText: "Enter password",
                      keyboardType: TextInputType.emailAddress,
                      lableText: "Password",
                      obSecureText: true,
                      onFieldTap: () {},
                      onSubmitField: () {},
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      focusBorderColor: Colors.black,
                      erroBorderColor: AppColors.emergencyColor,
                      validator: (String? value) {
                        Validator.checkEmail(email: email.text);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Remember me?"),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        onTap: () {},
                        text: "Login",
                        buttonColor: AppColors.AUDIO_CALL,
                        borderRadius: BorderRadius.circular(16),
                        textColor: Colors.white,
                        splashColor: Colors.white,
                        borderSideColor: Colors.green),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account?"),
                        Text("Sign In")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Forgot Password")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
