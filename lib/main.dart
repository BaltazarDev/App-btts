import 'package:boost_trade_solutions_app/constant.dart';
import 'package:boost_trade_solutions_app/login.dart';
import 'package:boost_trade_solutions_app/screen/login/login_screen.dart';
import 'package:boost_trade_solutions_app/screen/splash/splash_screen.dart';
import 'package:boost_trade_solutions_app/tracking.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boost Trade Solutions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: nBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
