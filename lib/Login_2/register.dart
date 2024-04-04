import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // tambahkan ini
import 'package:get/get.dart';
import 'package:project/Login_2/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namaLengkap = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController noHp = TextEditingController();
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
  final String apiUrl = 'http://10.0.2.2:8000/api/register';
  final response = await http.post(
    Uri.parse(apiUrl),
    body: {
      'nama_lengkap': namaLengkap.text,
      'email': email.text,
      'password': password.text,
      'no_hp': noHp.text,
    },
  );
  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = json.decode(response.body);
    String token = responseData['token'];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Register Berhasil'),
          content: Text('Registrasi berhasil. Silakan login.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  } else {
    final Map<String, dynamic> errorData = json.decode(response.body);
    String errorMessage = errorData['message'] ?? 'Terjadi kesalahan saat melakukan registrasi akun.';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notifikasi'),
          content: Text(errorMessage),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}



  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Akun Anda")),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromRGBO(34, 87, 122, 1),
              const Color.fromRGBO(76, 175, 80, 1)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
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
                  SizedBox(height: 55),
                  TextFormField(
                    controller: namaLengkap,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan Nama Anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukan Nama Anda",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan Email Anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukan Email Anda",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: password,
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan Password Anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Password Anda",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
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
                  SizedBox(height: 30),
                  TextFormField(
                    controller: noHp,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan No Hp Anda';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan No Hp Anda",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: signUp,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
        ),
      ),
    );
  }
}
