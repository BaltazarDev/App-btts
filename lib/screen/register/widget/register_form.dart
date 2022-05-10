import 'package:flutter/material.dart';
import 'input_text_register.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          InputTextRegister(
            label: 'Email',
            onChange: (value) {},
          ),
          SizedBox(height: 16,),
          InputTextRegister(
            label: 'Password',
            password: true,
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}