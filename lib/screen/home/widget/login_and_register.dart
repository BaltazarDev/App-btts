import 'package:boost_trade_solutions_app/login.dart';
import 'package:boost_trade_solutions_app/register.dart';
import 'package:boost_trade_solutions_app/screen/login/login_screen.dart';
import 'file:///C:/Users/balta/AndroidStudioProjects/boost_trade_solutions_app/lib/screen/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:boost_trade_solutions_app/constant.dart';

class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
              color: nPrimaryTextColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return RegisterF();
                    },
                    ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Registrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                  side: BorderSide(color: nPrimaryColor)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginF();
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    color: nPrimaryTextColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
