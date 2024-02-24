import 'package:flutter/material.dart';
import 'package:project/Ketentuan%20TopUp/ketentuan%20_joki.dart';

class JasaRank extends StatefulWidget {
  const JasaRank({Key? key}) : super(key: key);

  @override
  State<JasaRank> createState() => _JasaRankState();
}

class _JasaRankState extends State<JasaRank> {
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

          // Car tata cara dan ketentuan
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
        ],
      ),
    );
  }
}
