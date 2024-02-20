import 'package:flutter/material.dart';
import '../widgets/home_buttom.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Lacak Orderan'), // Judul halaman
      ),
      body: Container(
        child: Center(
          child: Text('Ini adalah halaman pencarian'), // Konten halaman pencarian
        ),
      ),
        bottomNavigationBar: HomeBottomBar() ,
    );
  }
}
