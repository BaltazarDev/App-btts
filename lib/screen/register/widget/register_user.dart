import 'package:flutter/material.dart';
import 'package:boost_trade_solutions_app/constant.dart';

class RegisterUser extends StatelessWidget {
  const RegisterUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Text(
        'Create account',
        style: TextStyle(
          color: nPrimaryTextColor,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}