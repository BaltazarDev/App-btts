import 'package:flutter/material.dart';
import 'package:boost_trade_solutions_app/constant.dart';

class InputTextLogin extends StatelessWidget {
  const InputTextLogin({
    Key key, this.label, this.onChange, this.password = false,
  }) : super(key: key);

  final String label;
  final Function onChange;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: password,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
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
    );
  }
}
