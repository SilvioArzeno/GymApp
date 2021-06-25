import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;

  final bool isPassword;

  final TextInputType keyboardType;

  final TextStyle textStyle;

  final Function onSubmit;

  final FocusNode focusNode;

  const LoginTextField(
      {Key key,
      this.isPassword,
      this.focusNode,
      this.hintText,
      this.textStyle,
      this.onSubmit,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: TextFormField(
          focusNode: focusNode,
          decoration: InputDecoration(hintText: hintText),
          keyboardType: keyboardType,
          style: textStyle,
          onFieldSubmitted: onSubmit,
          obscureText: isPassword,
        ),
      ),
    );
  }
}
