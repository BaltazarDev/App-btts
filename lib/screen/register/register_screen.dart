import 'package:boost_trade_solutions_app/constant.dart';
import 'package:boost_trade_solutions_app/screen/register/widget/register_button.dart';
import 'package:boost_trade_solutions_app/screen/register/widget/register_form.dart';
import 'package:boost_trade_solutions_app/screen/register/widget/register_user.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RegisterUser(),
          RegisterForm(),
          SizedBox(height: 60,),
          RegisterButton(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: nBackgroundColor,
      elevation: 8,
      centerTitle: true,
      title: Text(
        'Register',
        style: TextStyle(
          color: nPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: nPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}