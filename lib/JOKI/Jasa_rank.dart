import 'package:flutter/material.dart';
import 'package:project/Ketentuan%20TopUp/ketentuan%20_joki.dart';

class JasaRank extends StatefulWidget {
  const JasaRank({Key? key}) : super(key: key);

  @override
  State<JasaRank> createState() => _JasaRankState();
}

class _JasaRankState extends State<JasaRank> {
  late String valueChoose;
  List<String> listItem = ["Pilih Via Login ", "Moonton(Rekomendasi)", "Vk", "Tiktok", "Facrbook"];

  @override
  void initState() {
    super.initState();
    valueChoose = listItem[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Joki Rank Mobile Legends',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        backgroundColor: Color(0xff22577A),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: Image.asset(
              'images/Screen_Jokirank.png',
              fit: BoxFit.cover,
            ),
          ),
          // Bagian bawah berisi teks
          Container(
            padding: EdgeInsets.all(16),
            color: Color(0xff22577A),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/Jokirank.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Joki Rank',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1),
                      // Teks "Moonton"
                      Text(
                        'Mobile Legend Bang Bang',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Terverifikasi',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff22577A),
              border: Border.all(color: Color(0xffC7F9CC)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.security,
                      color: Color(0xff80ED99),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Jaminan Layanan',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Color(0xff80ED99),
                    ),
                    SizedBox(width: 8), // Spasi horizontal antara ikon dan teks
                    Text(
                      'Jaminan Layanan 24 Jam',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // Baris ketiga
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Color(0xff80ED99),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Pembayaran Aman & Terpercaya',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // Baris keempat
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.flash_on,
                      color: Color(0xff80ED99),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Proses Cepat & Otomatis',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KT_JokiRank()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff22577A),
                border: Border.all(color: Color(0xffC7F9CC)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lihat Cara Transaksi Disini',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          //////////////// akun data ////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffC7F9CC)),
                  color: Color(0xff22577A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1      Masukan Data Akun Kamu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'User ID & Nickname',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      margin: EdgeInsets.only(bottom: 0),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff22577A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Masukan ID Game kamu',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      'Server',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 15),
                      decoration: BoxDecoration(
                        color: Color(0xff22577A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: DropdownButton(
                              isExpanded: true,
                              hint: Text("Pilih Server"),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                              dropdownColor: Color(0xff22577A),
                              iconSize: 25,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose = newValue.toString();
                                });
                              },
                              items: listItem.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email/No Hp/Moonton ID',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff22577A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Ketikan Email/No Hp/Moonton ID',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                     SizedBox(height: 10),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff22577A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Ketikan Password',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),


                      SizedBox(height: 10),
                    Text(
                      'Request Hero',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff22577A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Ketikan Request Hero',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),


                      SizedBox(height: 10),
                    Text(
                      'Catatan Untuk Pejoki',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff22577A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),git
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Ketikan Catatan Untuk Pejoki',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    ///////
                  ],
                ),
              ),
            ],
          ),





        ],
      ),
    );
  }
}
