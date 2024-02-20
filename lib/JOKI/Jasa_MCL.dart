import 'package:flutter/material.dart';

class JasaMCL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Halaman MCL'), // Judul halaman
         backgroundColor: Color(0xff22577A),
      ),
      body: Center(
        
        child: Container(
          child: Text(
            'JOKI MCL', 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}