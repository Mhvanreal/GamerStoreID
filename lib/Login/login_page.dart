import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/Login/Ti_Componen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TiComponent(
              label: "Email",
              hint: "user@contoh.com",
              keyboardType: TextInputType.emailAddress,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Email diperlukan";
                } else if (!EmailValidator.validate(value)) {
                  return "Email tidak valid";
                } else {
                  return null;
                }
              },
              onChanged: (String? value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TiComponent(
              label: "Password",
              hint: "123456",
              isPassword: true,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Password diperlukan";
                } else {
                  return null;
                }
              },
              onChanged: (String? value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton( // Mengganti RaisedButton dengan ElevatedButton
                  child: Text(
                    "MASUK",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue, // Mengatur warna background
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print("Email: $email \nPassword: $password");
                    }
                  },
                ),
                TextButton( // Mengganti FlatButton dengan TextButton
                  child: Text(
                    "Pengguna baru?",
                    style: TextStyle(color: Colors.black45),
                  ),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
