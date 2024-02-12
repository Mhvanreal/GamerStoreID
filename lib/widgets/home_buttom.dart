import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 65,
      decoration: BoxDecoration( 
        color: Colors.white, //warnabox
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
             blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // Navigasi ke halaman beranda
              Navigator.pushNamed(context, '/home');
            },
            child: Icon(
              Icons.home, color: Color(0xFFE57734), 
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke halaman pencarian
              Navigator.pushNamed(context, '/search');
            },
            child: Icon(
              Icons.search, color: Color(0xFFE57734),  
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke halaman pengaturan
              Navigator.pushNamed(context, '/settings');
            },
            child: Icon(
              Icons.settings, color: Color(0xFFE57734), 
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke halaman akun
              Navigator.pushNamed(context, '/account');
            },
            child: Icon(
              Icons.account_circle, color: Color(0xFFE57734), 
            ),
          ),
        ],
      ),
    );
  }
  
}

