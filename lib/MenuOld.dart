import 'package:flutter/material.dart';

import 'constant.dart';

class InicioOld extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Boost Trade Solutions',
        theme: ThemeData(
          scaffoldBackgroundColor: nBackgroundColor,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Boost Trade Solutions"),
            backgroundColor: nPrimaryColor,
          ),
          drawer: MenuLateral(),
          body: Center(
            child: Text("Inicio"),
          ),
        )
    );
  }
}
class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Usuario"),
            accountEmail: Text("correo@correo.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://ichef.bbci.co.uk/news/660/cpsprodpb/6AFE/production/_102809372_machu.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text("MENU 1", style: TextStyle(color: Colors.white),),
            ),
          ),
          new ListTile(
            title: Text("MENU 2"),
            onTap: (){},
          ),
          new ListTile(
            title: Text("MENU 3"),
          ),
          new ListTile(
            title: Text("MENU 4"),
          )

        ],
      ) ,
    );
  }
}