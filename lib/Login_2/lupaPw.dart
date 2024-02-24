import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class lupaPw extends StatefulWidget {
  const lupaPw({super.key});

  @override
  State<lupaPw> createState() => _lupaPwState();
}

class _lupaPwState extends State<lupaPw> {

  TextEditingController email = TextEditingController();
  reset()async{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Lupa Password"),),
      body: Padding(
       
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
             TextField(
              controller: email,
              decoration: InputDecoration(hintText: "masukan email anda"),
            ),
        
          SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () => reset(),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 30), // Atur lebar dan tinggi tombol
                ),
              child: Text(
                "Send Link",
                style: TextStyle(fontSize: 20),)),
          ],
        
        ),
      ),
    );
  }
}