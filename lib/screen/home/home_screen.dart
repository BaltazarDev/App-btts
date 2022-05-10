import 'package:boost_trade_solutions_app/constant.dart';
import 'package:boost_trade_solutions_app/screen/home/widget/login_and_register.dart';
import 'package:boost_trade_solutions_app/screen/home/widget/slider_dot.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBackgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget> [
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .9,
                child: Image.asset(
                  "assets/images/LogoBTTS.png",
                  /*width: 700.0,
                  height: 500.0,*/
                ),
              ),
            ),
            Spacer(),
            /*SizedBox(
              height: 20,
            ),*/
            /*Text(
              'Building Trust',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: nPrimaryTextColor,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),*/
            // Spacer(),
            /*SizedBox(height: 60,),*/
            LoginAndRegister(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
