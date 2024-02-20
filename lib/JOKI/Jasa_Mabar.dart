import 'package:flutter/material.dart';

class JasaMabar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Halaman Jasa Main Bareng'), // Judul halaman
      ),
      body: Center(
        child: Container(
          child: Text(
            'Mabar ', 
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