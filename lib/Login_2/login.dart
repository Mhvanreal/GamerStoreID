import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Login_2/lupaPw.dart';
import 'package:project/Login_2/register.dart';

class login extends StatefulWidget {
  const login({Key? key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isObscure = true;

  signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
    } catch (error) {
      // Handle error
      String errorMessage = "Kemungkinan email dan password salah";
      if (error is FirebaseAuthException) {
        errorMessage = error.message ?? "Kemungkinan email dan password salah";
      }
      
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.bottomSlide,
        title: 'Error',
        desc: "Kemungkinan email dan password anda salah",
        btnOkOnPress: () {},
      )..show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80ED99),
      appBar: AppBar(title: Text("Login Page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Selamat Datang Di GamerStore.Id',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'images/Chica.png',
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
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
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
                obscureText: _isObscure,
                decoration: InputDecoration(
                  hintText: "masukan Password anda",
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscure
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(register()),
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(lupaPw()),
                    child: Text(
                      'Lupa Password',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: GestureDetector(
                  onTap: () => signIn(),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
