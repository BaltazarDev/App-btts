import 'package:flutter/material.dart';
import '../../../constant.dart';
import 'input_text_login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
          InputTextLogin(
            label: 'Email',
            onChange: (value) {},
          ),
          SizedBox(height: 16,),
          InputTextLogin(
            label: 'Password',
            //password: true,
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}