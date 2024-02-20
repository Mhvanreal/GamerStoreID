import 'package:flutter/material.dart';
import 'package:project/Login/login_page.dart';


class AuthLayout extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(  
          padding: EdgeInsets.symmetric(horizontal: 25.0,),
          child: LoginPage(),

        ),
      ),
    );
  }
}