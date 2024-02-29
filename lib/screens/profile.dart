import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/home_buttom.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}


  final user = FirebaseAuth.instance.currentUser;
    // signout()async{
    //   await FirebaseAuth.instance.signOut();
    // }
    signout() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await FirebaseAuth.instance.signOut();
    // Navigasi kembali ke halaman login atau halaman awal aplikasi
    // Misalnya, jika menggunakan Navigator, Anda dapat menavigasi ke halaman login:
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff22577A),
        title: Text('Profile',
        style: TextStyle(color: Colors.white
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Text('${user!.email}',),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
