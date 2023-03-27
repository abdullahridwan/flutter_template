import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:promptdiary/constants.dart';
import 'package:promptdiary/components/rect_button.dart';
import 'package:promptdiary/components/rect_textformfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKeyLogin = GlobalKey<FormState>();

  handleSubmit() {
    if (_formKeyLogin.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Submitted!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              width: (screenWidth > 750) ? (screenWidth * 0.5) : screenWidth,
              child: Form(
                key: _formKeyLogin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(5.0, 5.0),
                            blurRadius: 2.0,
                            color: Colors.grey.shade300,
                          ),
                        ],
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 20,
                        fontSize: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .fontSize!,
                      ),
                    ),
                    UnDraw(
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.35,
                        illustration: UnDrawIllustration.mobile_login,
                        color: Theme.of(context).primaryColor),
                    RectTextFormField(
                      controller: null,
                      labelTextField: 'Email',
                      isObscured: false,
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    RectTextFormField(
                      controller: null,
                      isObscured: true,
                      labelTextField: 'Password',
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    RectButton(
                      formKey: _formKeyLogin,
                      vp: 10,
                      hp: 0,
                      handler: handleSubmit,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
