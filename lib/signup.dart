import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:promptdiary/rect_button.dart';
import 'package:promptdiary/rect_textformfield.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKeySignup = GlobalKey<FormState>();

  handleSubmit() {
    if (_formKeySignup.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Submitted!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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
                      fontSize:
                          Theme.of(context).textTheme.displayMedium!.fontSize!,
                    ),
                  ),
                  UnDraw(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.35,
                      illustration: UnDrawIllustration.forms,
                      color: Theme.of(context).primaryColor),
                  RectTextFormField(
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
                    isObscured: true,
                    labelTextField: 'Password',
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
    );
  }
}
