import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';
import 'package:yagnena_kalpatha/constants/strings.dart';
import 'package:yagnena_kalpatha/screens/widgets/intro_screen.dart';
import 'package:yagnena_kalpatha/shared/validation/validator.dart';
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

  String? emailValue = "";
  String? passwordValue = "";

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
                    InputTextField(
                      onChanged: (val) {
                        setState(() {
                          emailValue = email.text;
                        });
                      },
                      controller: email,
                      customeValidator: true,
                      validate: (emailValue) =>
                          Validator.checkEmail(email: emailValue)
                              ? "Email not valid"
                              : "",
                      hintText: "Enter emai...",
                      lableText: "email",
                      obsecureText: false,
                      textInputType: TextInputType.emailAddress,
                      onTap: () async {
                        await Future.delayed(Duration(milliseconds: 500));
                        RenderObject? object =
                            globalKey.currentContext!.findRenderObject();
                        object!.showOnScreen();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputTextField(
                      onChanged: (val) {
                        setState(() {
                          emailValue = email.text;
                        });
                      },
                      controller: email,
                      customeValidator: true,
                      validate: (emailValue) =>
                          Validator.checkEmail(email: emailValue)
                              ? "Email not valid"
                              : "",
                      hintText: "Enter Password.... ",
                      lableText: "Password",
                      obsecureText: true,
                      textInputType: TextInputType.emailAddress,
                      onTap: () async {
                        await Future.delayed(Duration(milliseconds: 500));
                        RenderObject? object =
                            globalKey.currentContext!.findRenderObject();
                        object!.showOnScreen();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Remember me?"),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      key: globalKey,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (Validator.checkEmail(email: emailValue)) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IntroPage()));
                          } else if (Validator.checkEmail(email: emailValue)) {}
                        }
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.cyan),
                        child: Center(child: Text("Login In")),
                      ),
                    ),
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
