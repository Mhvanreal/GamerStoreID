import 'package:flutter/material.dart';

class MlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold ditambahkan untuk menampilkan UI yang lebih lengkap
      appBar: AppBar( // AppBar untuk menampilkan judul halaman
        title: Text('Halaman Top Up Mobile legend Bang bang'), // Judul halaman
      ),
      body: Center(
        child: Container(
          child: Text(
            'Halaman Top Up Mobile legend bang bang', // Tulisan yang membedakan halaman
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
