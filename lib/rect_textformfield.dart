import 'package:flutter/material.dart';
import 'package:promptdiary/constants.dart';

class RectTextFormField extends StatelessWidget {
  const RectTextFormField({
    Key? key,
    required String labelTextField,
    required String? Function(String?)? validator,
    required bool isObscured,
  })  : _labelTextField = labelTextField,
        _validator = validator,
        _isObscured = isObscured,
        super(key: key);

  final String _labelTextField;
  final String? Function(String?)? _validator;
  final bool _isObscured;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: _isObscured,
        decoration: InputDecoration(
          labelText: _labelTextField,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
          ),
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
        validator: _validator,
      ),
    );
  }
}
