import 'package:flutter/material.dart';

class CodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold ditambahkan untuk menampilkan UI yang lebih lengkap
      appBar: AppBar( // AppBar untuk menampilkan judul halaman
        title: Text('Halaman Top Up Cod'), // Judul halaman
      ),
      body: Center(
        child: Container(
          child: Text(
            'Halaman Top Up COd', // Tulisan yang membedakan halaman
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