import 'package:boost_trade_solutions_app/constant.dart';
import 'package:boost_trade_solutions_app/screen/login/widget/login_button.dart';
import 'package:boost_trade_solutions_app/screen/login/widget/login_form.dart';
import 'package:boost_trade_solutions_app/screen/login/widget/welcome_back.dart';
import 'package:boost_trade_solutions_app/screen/register/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  bool isHiddenPassword = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WelcomeBack(),
        TextField(
          //onChanged: onChange,
          //obscureText: true,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email, color: Colors.white,),
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.white),
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: nPrimaryColor,
                  width: 2,
                )
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: nPrimaryColor,
                  width: 2,
                )
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 0.5,
                )
            ),
          ),
        ),
          TextField(
            //onChanged: onChange,
            obscureText: true,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock, color: Colors.white,),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: nPrimaryColor,
                    width: 2,
                  )
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: nPrimaryColor,
                    width: 2,
                  )
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 0.5,
                  )
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(color: nPrimaryColor),
            ),
          ),
          SizedBox(height: 60,),
          LoginButton(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(color: nPrimaryColor,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return RegisterScreen();
                          },
                        ),
                      );
                    },
                  ),
                ]),
              ),
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
        'Login',
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