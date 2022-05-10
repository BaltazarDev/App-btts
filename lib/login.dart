import 'package:boost_trade_solutions_app/register.dart';
import 'package:boost_trade_solutions_app/screen/register/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'DashBoard.dart';
import 'dart:convert';
import 'Inicio.dart';
import 'constant.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginF extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginF> {
  bool isHiddenPassword = true;
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    //var url = "http://192.168.1.72/flutter_mysql/flutter_mysql/login.php";
    var url = "http://192.168.1.65/RestJWT/public/api/login";
    var response = await http.post(url, body: {
      "email": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    if (data == 200) {
      FlutterToast(context).showToast(
          child: Text(
            'Login Successful',
            style: TextStyle(fontSize: 25, color: Colors.green),
          ));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Inicio(),),);
    } else if (data == 500) {
      FlutterToast(context).showToast(
          child: Text('Username and password invalid',
              style: TextStyle(fontSize: 25, color: Colors.red)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: nBackgroundColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(
                color: nPrimaryTextColor,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25.0),
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                  labelText: 'Correo',
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
              controller: user,
            ),
            SizedBox(height: 15.0),
            TextField(
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              obscureText: isHiddenPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                  labelText: 'Contraseña',
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
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                ),
              ),
              controller: pass,
            ),
            SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerRight,
              child: Text(
                '¿Olvidaste la contraseña?',
                style: TextStyle(color: nPrimaryColor),
              ),
            ),
            SizedBox(height: 60,),
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
                      TextSpan(text: '¿No cuentas con una cuenta? '),
                      TextSpan(
                        text: 'Registrar',
                        style: TextStyle(color: nPrimaryColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context){
                                return RegisterF();
                              },
                            ),
                          );
                        },
                      ),
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                color: nPrimaryColor,
                onPressed: () {
                  login();
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    isHiddenPassword = !isHiddenPassword;
    setState(() {});
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: nBackgroundColor,
      elevation: 8,
      centerTitle: true,
      title: Text(
        'Iniciar Sesión',
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

class FlutterToast {
  FlutterToast(BuildContext context);

  void showToast({Text child}) {}
}