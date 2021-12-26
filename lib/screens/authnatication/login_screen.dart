import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/strings.dart';
import 'package:yagnena_kalpatha/shared/widgets/text_form_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InputTextField(
                          Strings.ENTER_YOUR_EMAIL,
                          Validator(),
                          "Email",
                          email,
                          false,
                          TextInputType.emailAddress,
                          true),
                      SizedBox(
                        height: 10,
                      ),
                      InputTextField("Enter Password", Validator(), "Password",
                          password, true, TextInputType.emailAddress, true),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Remember me?"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.cyan),
                        child: Center(child: Text("Login In")),
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
            ),
          ),
        )
      ],
    ));
  }

  Validator() {}
}
