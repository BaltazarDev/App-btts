import 'package:boost_trade_solutions_app/screen/home/home_screen.dart';
import 'package:boost_trade_solutions_app/tracking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d,(){
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context){
          return HomeScreen();
        },
      ),
          (route) => false,
    );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget> [
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .9,
                child: Image.asset(
                  "assets/images/LogoBTTS.png",
                  //width: 700.0,
                  //height: 500.0,
                ),
                //child: FlutterLogo(size: 400)
              ),
            ),
            Spacer(),
            //CircularProgressIndicator(),
            //Spacer(),
            //Text('Bienvenido')
          ],
        ),
      ),
    );
  }
}
