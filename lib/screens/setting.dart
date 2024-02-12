import 'package:flutter/material.dart';
import '../widgets/home_buttom.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('pengaturan'), // Judul halaman
      ),
      body: Container(
        child: Center(
          child: Text('Ini adalah halaman Pengaturan'), // Konten halaman pencarian
        ),
      ),
      bottomNavigationBar: HomeBottomBar() ,
    );
  }
}
