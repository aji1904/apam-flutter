import 'package:app/view/page/getlist.dart';
import 'package:flutter/material.dart';

class Searchtarif extends StatefulWidget {
  const Searchtarif({Key? key}) : super(key: key);

  @override
  State<Searchtarif> createState() => _SearchtarifState();
}

class _SearchtarifState extends State<Searchtarif> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    double WidthScreen = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final double FontSizeText = (WidthScreen <= 320) ? 10 : 15;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
                top: 25.0, bottom: 25.0, left: 30.0, right: 30.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.greenAccent),
                  padding: const EdgeInsets.all(10.0),
                  child: const Center(
                    child: Text(
                      "Informasi Rumah Sakit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 30.0)),
                Row(
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/lab.png'),
                                semanticLabel: 'Tarif Laboratorium',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                'Tarif Laboratorium',
                                style: TextStyle(
                                  fontSize: FontSizeText,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20.0)),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/surgery.png'),
                                semanticLabel: 'Paket Operasi',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                'Paket Operasi',
                                style: TextStyle(
                                  fontSize: FontSizeText,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20.0)),
                Row(
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/radiologi.png'),
                                semanticLabel: 'Tarif Radiologi',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                'Tarif Radiologi',
                                style: TextStyle(
                                  fontSize: FontSizeText,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20.0)),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/bed.png'),
                                semanticLabel: 'Tarif Kamar',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                "Tarif Kamar",
                                style: TextStyle(
                                    fontSize: FontSizeText, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20.0)),
                Row(
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/kontak.png'),
                                semanticLabel: 'Kontak',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                "Kontak RS",
                                style: TextStyle(
                                    fontSize: FontSizeText, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20.0)),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/insurance.png'),
                                semanticLabel: 'Asuransi',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                "Asuransi",
                                style: TextStyle(
                                    fontSize: FontSizeText, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20.0)),
                Row(
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/icon_fasilitas_kamar.png'),
                                semanticLabel: 'Kamar Tersedia',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                "Kamar Tersedia",
                                style: TextStyle(
                                    fontSize: FontSizeText, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20.0)),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetListData()));
                        }),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Column(
                            children: [
                              const Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/bad.png'),
                                semanticLabel: 'Pengaduan',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                              ),
                              Text(
                                "Pengaduan",
                                style: TextStyle(
                                    fontSize: FontSizeText, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
