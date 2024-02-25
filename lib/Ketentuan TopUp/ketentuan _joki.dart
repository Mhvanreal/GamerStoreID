import 'package:flutter/material.dart';



class Ketentuan_JOki extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Ketentuan'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 16),
          KT_JokiRank(),
          SizedBox(height: 16),
          KT_JokiMCL(),

        ],
      ),
    );
  }
}



class KT_JokiRank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff22577A),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
        ),
        title: Text(
          'Kembali',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 0),
          padding: EdgeInsets.only(left: 30),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text(
                'Top up Diamong Free Fire',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'GamerStore mempersembahkan penawaran istimewa untuk penawaran sejati untuk para Gamers sejati kami hadir dengan layanan Topup resmi 100% legal untuk Free Fire, Yang dirancang khusus untuk meningkatkan pengalaman bermain game anda. Nikmati kemudahan, keamanan, dan harga yang terjangkau dalam setiap transaksi Top up anda\n\nTop up Free Fire Resmi dan terpercaya.\n\nBerikut adalah langkah-langkah sederhana untuk topup Free Fire: \n\n1.Masukan Data Akun Free Fire (pastikan data yang anda masukan sudah benar dan lengkap)\n2.Pilih nominal Diamond (kami menyediakan berbagai pilihan nominal yang bisa anda sesuaikan dengan kebutuhan)\n3.Pilih metode pembayaran (kenyamanan anda adalah prioritas kami. kami menyediakan berbagai metode pembayaran yang mudah dan aman) \n4.Masukan nomor WhatsApp dan Email yang valid (Dapatkan konfirmasi dan notifikasi langsung ke kontak anda) \n5.Klik order now & lakukan pembayaran (Proses mudah dan cepat, kini anda tinggal selangkah lagi untuk meningkatkan pengalaman gaming anda \n6.Diamond akan masuk otomatis ke akun anda) \n\n GamerStore Sahabat para Gamers!',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



///////////////////////////////////////

class KT_JokiMCL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff22577A),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
        ),
        title: Text(
          'Kembali',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 0),
          padding: EdgeInsets.only(left: 30),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text(
                'Top up Diamong Free Fire',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'GamerStore mempersembahkan penawaran istimewa untuk penawaran sejati untuk para Gamers sejati kami hadir dengan layanan Topup resmi 100% legal untuk Free Fire, Yang dirancang khusus untuk meningkatkan pengalaman bermain game anda. Nikmati kemudahan, keamanan, dan harga yang terjangkau dalam setiap transaksi Top up anda\n\nTop up Free Fire Resmi dan terpercaya.\n\nBerikut adalah langkah-langkah sederhana untuk topup Free Fire: \n\n1.Masukan Data Akun Free Fire (pastikan data yang anda masukan sudah benar dan lengkap)\n2.Pilih nominal Diamond (kami menyediakan berbagai pilihan nominal yang bisa anda sesuaikan dengan kebutuhan)\n3.Pilih metode pembayaran (kenyamanan anda adalah prioritas kami. kami menyediakan berbagai metode pembayaran yang mudah dan aman) \n4.Masukan nomor WhatsApp dan Email yang valid (Dapatkan konfirmasi dan notifikasi langsung ke kontak anda) \n5.Klik order now & lakukan pembayaran (Proses mudah dan cepat, kini anda tinggal selangkah lagi untuk meningkatkan pengalaman gaming anda \n6.Diamond akan masuk otomatis ke akun anda) \n\n GamerStore Sahabat para Gamers!',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}















void main() {
  runApp(MaterialApp(
    home: Ketentuan_JOki(),
  ));
}


