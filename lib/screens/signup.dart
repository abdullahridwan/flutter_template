import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:promptdiary/components/rect_button.dart';
import 'package:promptdiary/components/rect_textformfield.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKeySignup = GlobalKey<FormState>();
  final TextEditingController _passwordController = new TextEditingController();
  final GlobalKey<FlutterPwValidatorState> validatorKey =
      GlobalKey<FlutterPwValidatorState>();

  handleSubmit() {
    if (_formKeySignup.currentState!.validate()) {
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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: (screenWidth > 750) ? (screenWidth * 0.5) : screenWidth,
                child: Form(
                  key: _formKeySignup,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "SIGN UP",
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
                          illustration: UnDrawIllustration.forms,
                          color: Theme.of(context).primaryColor),
                      RectTextFormField(
                        controller: null,
                        labelTextField: 'First Name',
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
                        labelTextField: 'Last Name',
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
                        controller: _passwordController,
                        isObscured: true,
                        labelTextField: 'Password',
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      FlutterPwValidator(
                        key: validatorKey,
                        successColor: Colors.green.shade700,
                        controller: _passwordController,
                        minLength: 6,
                        uppercaseCharCount: 2,
                        numericCharCount: 3,
                        specialCharCount: 1,
                        width: 400,
                        height: 150,
                        onSuccess: () {
                          print("MATCHED");
                          ScaffoldMessenger.of(context).showSnackBar(
                              new SnackBar(
                                  content: new Text("Password is matched")));
                        },
                        onFail: () {
                          print("NOT MATCHED");
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RectButton(
                        formKey: _formKeySignup,
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
      ),
    );
  }
}
