import 'dart:developer';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/view/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: constant_identifier_names
  static const ShadowBox = [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(3.0, 3.0),
      blurRadius: 2,
      spreadRadius: -2,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              bottom: 25.0,
              left: 25.0,
              right: 25.0,
              top: 10.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Bunda Medika Jakabaring",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    Badge(
                      position: BadgePosition.topEnd(end: 3, top: 2),
                      animationType: BadgeAnimationType.scale,
                      badgeContent: const Text(
                        "3",
                        style: TextStyle(color: Colors.white),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.greenAccent,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    log("message");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Pendaftaran Mandiri',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                            ),
                            Text(
                              'Silahkan Lakukan pendaftaran',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                            Text(
                              'Mandiri Rawat Jalan',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const <Widget>[
                              Image(
                                height: 80,
                                width: 80,
                                image: AssetImage('assets/logo.png'),
                                semanticLabel: 'yaski',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: const Text(
                    'Riwayat Perawatan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // Riwayat Perawatan
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          });
                        }),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                                Image(
                                  height: 80,
                                  width: 80,
                                  image: AssetImage('assets/rawat-jalan.png'),
                                  semanticLabel: 'rawat jalan',
                                ),
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                                Text(
                                  'Rawat Jalan',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                              ],
                            ),
                            const Text(
                              '9',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Expanded(
                      child: ElevatedButton(
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
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                                Image(
                                  height: 80,
                                  width: 80,
                                  image: AssetImage('assets/rawat-inap.png'),
                                  semanticLabel: 'rawat inap',
                                ),
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                                Text(
                                  'Rawat Inap',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                              ],
                            ),
                            const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                  child: const Text(
                    'Menu Utama',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                // menu Utama
                Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.blue)),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/icon_dokter.png'),
                                    semanticLabel: 'Jadwal Dokter',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  Text(
                                    "Jadwal Dokter",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10.0)),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.blue)),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/icon_fasilitas_kamar.png'),
                                    semanticLabel: 'Kamar',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  Text(
                                    "Kamar Tersedia",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 10.0)),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.blue)),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/icon_kamar.png'),
                                    semanticLabel: 'Fasilitas Kamar',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  Text(
                                    "Fasilitas kamar",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                      children: [
                        Flexible(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.blue)),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/lab.png'),
                                    semanticLabel: 'Laboratorium',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  Text(
                                    "Laboratorium",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10.0)),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.blue)),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/radiologi.png'),
                                    semanticLabel: 'Radiologi',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  Text(
                                    "Radiologi",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 10.0)),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.blue)),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: const [
                                  Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/kontak.png'),
                                    semanticLabel: 'Kontak',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  Text(
                                    "Kontak",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
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
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                  child: const Text(
                    'Berita Rumah Sakit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Color.fromRGBO(76, 217, 116, 1),
                            boxShadow: ShadowBox,
                          ),
                          child: Text(
                            'text $i',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
