import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Login_2/lupaPw.dart';
import 'package:project/Login_2/register.dart';
import 'package:project/screens/home.dart';

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
  //        AwesomeDialog(
  // context: context,
  // dialogType: DialogType.success,
  // animType: AnimType.bottomSlide,
  // title: 'Berhasil',
  // desc: "Anda telah berhasil membuat akun",
  // btnOkOnPress: () {
  //   try {
  //     // Navigasi ke halaman beranda (ganti dengan halaman yang sesuai)
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => HomeScreen()), // Ganti dengan halaman beranda yang sesuai
  //     );
  //   } catch (e) {
  //     print("Error when navigating to HomeScreen: $e");
  //   }
  // },
// )..show();
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
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ const Color.fromRGBO(34, 87, 122, 1),const Color.fromRGBO(76, 175, 80, 1)],
          ),
        ),
        child: SingleChildScrollView(
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
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    'images/LOGOID2.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(height: 80),
             
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
                SizedBox(height: 40),
             
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
                          color:Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(lupaPw()),
                      child: Text(
                        'Lupa Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => signIn(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
