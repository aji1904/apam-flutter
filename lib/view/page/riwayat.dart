import 'package:flutter/material.dart';

class RiwayatPasien extends StatefulWidget {
  const RiwayatPasien({Key? key}) : super(key: key);

  @override
  State<RiwayatPasien> createState() => _RiwayatPasienState();
}

class _RiwayatPasienState extends State<RiwayatPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Riwayat Berobat",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                const Text(
                  "Data Pasien",
                  style: TextStyle(fontSize: 15),
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.blue)),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("No. Reg"),
                            Text("2022/05/30/00000001"),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tanggal"),
                            Text("2022-05-23"),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Poli"),
                            Text("ANAK"),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Jaminan"),
                            Text("Umum"),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Dokter"),
                            Text("dr. Andra Kurianto, Sp.A"),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
