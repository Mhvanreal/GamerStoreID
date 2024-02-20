import 'package:flutter/material.dart';

class JasaRank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Halaman Joki rank'), // Judul halaman
      ),
      body: Center(
        child: Container(
          child: Text(
            'JOKI RANK', 
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