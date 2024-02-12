import 'package:flutter/material.dart';
import '../widgets/home_buttom.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'), // Judul halaman
      ),
      body: Container(
        child: Center(
          child: Text('Ini adalah halaman profile'), // Konten halaman pencarian
        ),
      ),
      bottomNavigationBar: HomeBottomBar() ,
    );
  }
}
