import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // BACKGROUND BIRU PASTEL
        backgroundColor: Color(0xFFEAF4FB),

        appBar: AppBar(
          title: Text('Coban Talun'),
          backgroundColor: Color(0xFFC9E4F6),
          foregroundColor: Color(0xFF35627D),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // FOTO
              // =========================
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/coban talun.jpg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // =========================
              // JUDUL
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Coban Talun',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF35627D),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // =========================
              // SEJARAH
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Coban Talun merupakan salah satu wisata air terjun '
                    'yang berada di Desa Dusun Wonorejo, Kecamatan Bumiaji, '
                    'Kota Batu, Jawa Timur. Air terjun ini berada di kawasan '
                    'pegunungan dengan suasana yang sejuk dan lingkungan '
                    'alam yang masih asri.\n\n'
                    'Coban Talun memiliki air terjun dengan aliran air '
                    'yang cukup deras dan dikelilingi oleh pepohonan. '
                    'Kawasan ini awalnya lebih dikenal sebagai kawasan '
                    'wisata alam dan kemudian dikembangkan dengan berbagai '
                    'fasilitas untuk wisatawan.\n\n'
                    'Seiring berkembangnya kawasan wisata, Coban Talun '
                    'tidak hanya menjadi tempat untuk menikmati air terjun, '
                    'tetapi juga menyediakan berbagai aktivitas dan tempat '
                    'menarik bagi pengunjung. Keindahan alam dan udara yang '
                    'sejuk menjadi salah satu daya tarik utama Coban Talun.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFF333333),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // =========================
              // LOKASI DAN KONTAK
              // =========================
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFAFCFE3),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =========================
                      // LOKASI
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF35627D),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xFF4F8FB8),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Coban Talun\n'
                                    'Dusun Wonorejo,\n'
                                    'Desa Tulungrejo,\n'
                                    'Kecamatan Bumiaji,\n'
                                    'Kota Batu, Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // =========================
                      // GARIS PEMISAH
                      // =========================
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xFFAFCFE3),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // =========================
                      // CONTACT
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF35627D),
                              ),
                            ),

                            SizedBox(height: 12),

                            // WHATSAPP
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xFF4F8FB8),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '087856807208',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS PEMISAH
                            Container(
                              height: 1,
                              color: Color(0xFFAFCFE3),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xFF4F8FB8),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'diniafrilia378@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
