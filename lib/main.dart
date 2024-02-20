import 'package:flutter/material.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/lacak_orderan.dart';
import 'package:project/screens/profile.dart';
import 'package:project/screens/setting.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'package:project/screens/welcome_screen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Konfigurasi rute
      routes: {
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchPage(),
        '/settings': (context) => SettingsPage(),
        '/account': (context) => Profile(),
      },
      // Konfigurasi tema, title, dsb.
      title: 'My Flutter App',
      theme: ThemeData(
      scaffoldBackgroundColor: Color(00000) , 
      ),
        home: welcomescreen(),
      // Konfigurasi lainnya
      // ...
    );
    
  }
}
