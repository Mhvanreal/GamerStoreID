import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  signIn()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Login Page"),),
      body: Padding(
       
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
             TextField(
              controller: email,
              decoration: InputDecoration(hintText: "masukan email anda"),
            ),
        
              TextField(
              controller: password,
              decoration: InputDecoration(hintText: "masukan Password anda"),
            ),

            ElevatedButton(onPressed: (()=>signIn()), child: Text("Login")),
          ],
        
        ),
      ),
    );
  }
}