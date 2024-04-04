import 'dart:io';
import 'package:sp_util/sp_util.dart';

import '../widgets/home_buttom.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  Future takePhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? takenImage = await picker.pickImage(
      source: ImageSource.camera,
    );
    if (takenImage != null) {
      setState(() {
        image = File(takenImage.path);
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff22577A),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(34, 87, 122, 1),
              Color.fromRGBO(76, 175, 80, 1)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.photo_library),
                            title: Text('Ambil foto dari galeri'),
                            onTap: () {
                              Navigator.pop(context);
                              getImage();
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.camera_alt),
                            title: Text('Ambil foto menggunakan kamera'),
                            onTap: () {
                              Navigator.pop(context);
                              takePhoto();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 110,
                height: 120,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: image != null
                    ? ClipOval(
                        child: Image.file(
                          image!,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.grey[700],
                      ),
              ),
            ),
           SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nama Text',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.edit_square,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
               Text("${SpUtil.getString("email")}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                ],
              ),
            ),
          SizedBox(height: 20),
                 GestureDetector(
            onTap: () {
              // Navigator.push(
              //   // context,
              //   // MaterialPageRoute(builder: (context) => KT_JokiRank()),
              // );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20, left: 60, right: 60),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xff34A0A4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lihat Riwayat Pesanan Anda',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      
                    ),
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
              Container(
        padding: EdgeInsets.all(8),
        child: Text(
          'Informasi Akun',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),

              Container(
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
         SizedBox(height: 10),
           GestureDetector(
          onTap: () {
            // Navigator.push(
            //   // context,
            //   // MaterialPageRoute(builder: (context) => KT_JokiRank()),
            // );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10,left: 10,),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(width: 40),
                Text(
                  'Username: ${SpUtil.getString("nama_lengkap")}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
            Container(
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
 SizedBox(height: 10),
           GestureDetector(
          onTap: () {
            // Navigator.push(
            //   // context,
            //   // MaterialPageRoute(builder: (context) => KT_JokiRank()),
            // );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10,left: 10,),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(width: 40),
                Text(
                  'Email: ${SpUtil.getString("email")}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
         Container(
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
          SizedBox(height: 10),
           GestureDetector(
          onTap: () {
            // Navigator.push(
            //   // context,
            //   // MaterialPageRoute(builder: (context) => KT_JokiRank()),
            // );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10,left: 10,),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(width: 40),
                Text(
                  ' ********',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
         Container(
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
        SizedBox(height: 10),
         GestureDetector(
          onTap: () {
            // Navigator.push(
            //   // context,
            //   // MaterialPageRoute(builder: (context) => KT_JokiRank()),
            // );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10,left: 10,),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(width: 40),
                Text(
                  ' ********',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
         Container(
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),

          
          ],
        ),
        
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
