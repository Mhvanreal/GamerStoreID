import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Login_2/wrapper.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {

  
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  signUp()async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
    Get.offAll(Wrapper());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80ED99),
      appBar: AppBar(title: Text("Daftar Akun Anda")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'images/boy_mobile.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "masukan email anda",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "masukan Password anda",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () => signUp(),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Daftar Akun",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}