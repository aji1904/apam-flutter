import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';

// import 'package:responsive_ui/responsive_ui.dart';

class NavHome extends StatelessWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Daftar Mandiri
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          navbarApp,
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          cardPendaftaranMandiri,
          // Space
          spaceRiwayat,
          // riwayat rawat
          riwayatPerawatan,
          //space
          spaceMenu,
          //menu
          menuAplikasi,
          const Padding(padding: EdgeInsets.only(top: 20.0)),
          spaceCarousel,
          carouselWidget,
          const Padding(padding: EdgeInsets.only(top: 20.0)),
        ],
      ),
    );
  }
}

get onPressed => null;

Widget navbarApp = Container(
  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        'My App',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Badge(
        badgeContent: const Text('10',
            style: TextStyle(color: Colors.white, fontSize: 8)),
        child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.notifications,
              color: Color.fromRGBO(44, 208, 72, 1),
            )),
        badgeColor: Colors.red.shade400,
        position: BadgePosition.topEnd(end: 3, top: 8),
      ),
    ],
  ),
);

Widget menuAplikasi = Column(
  children: [
    Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('assets/images/icon_dokter.png'),
                      semanticLabel: 'Jadwal Dokter',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: 95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Text(
                      'Jadwal Dokter',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Image(
                      height: 75,
                      width: 75,
                      image:
                          AssetImage('assets/images/icon_fasilitas_kamar.png'),
                      semanticLabel: 'fasilitas kamar',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: 95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Text(
                      'Kamar',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('assets/images/icon_kamar.png'),
                      semanticLabel: 'kamar',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: 95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Text(
                      'fasilitas kamar',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
    const Padding(padding: EdgeInsets.only(top: 15.0)),
    Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('assets/images/lab.png'),
                      semanticLabel: 'Laboratorium',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: 95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Text(
                      'Laboratorium',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('assets/images/radiologi.png'),
                      semanticLabel: 'radiologi',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: 95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Text(
                      'Radiologi',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('assets/images/kontak.png'),
                      semanticLabel: 'kontak',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    alignment: Alignment.center,
                    width: 95,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Color.fromRGBO(250, 255, 251, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3.0, 7.0),
                          blurRadius: 10,
                          spreadRadius: -2,
                        )
                      ],
                    ),
                    child: const Text(
                      'Kontak',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ],
);

Widget spaceMenu = const Padding(
  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
  child: Text(
    'Menu Utama',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
);

Widget spaceRiwayat = Container(
  margin: const EdgeInsets.only(left: 20.0),
  alignment: Alignment.topLeft,
  padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
  child: const Text(
    'Riwayat Perawatan',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
);

Widget cardPendaftaranMandiri = Container(
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    color: Color.fromRGBO(76, 217, 116, 1),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(1.0, 1.0),
        blurRadius: 10,
        spreadRadius: -2,
      )
    ],
  ),
  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
  padding: const EdgeInsets.only(
    top: 10,
    left: 15,
    right: 15,
    bottom: 10,
  ),
  child: Row(
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Pendaftaran Mandiri',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          Text(
            'Silahkan Lakukan pendaftaran',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          Text(
            'Mandiri Rawat Jalan',
            style: TextStyle(fontSize: 13, color: Colors.white),
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
              image: AssetImage('assets/images/logo.png'),
              semanticLabel: 'yaski',
            )
          ],
        ),
      ),
    ],
  ),
);

Widget riwayatPerawatan = Container(
  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
  child: Row(
    children: [
      Expanded(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(250, 255, 251, 1),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(3.0, 7.0),
                blurRadius: 10,
                spreadRadius: -2,
              )
            ],
          ),
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 15.0,
            right: 20.0,
            bottom: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Image(
                    height: 75,
                    width: 75,
                    image: AssetImage('assets/images/rawat-jalan.png'),
                    semanticLabel: 'rawat jalan',
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text('Rawat Jalan',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              const Text(
                '10',
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
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(250, 255, 251, 1),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(3.0, 7.0),
                blurRadius: 10,
                spreadRadius: -2,
              )
            ],
          ),
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 15.0,
            right: 20.0,
            bottom: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Image(
                    height: 75,
                    width: 75,
                    image: AssetImage('assets/images/rawat-inap.png'),
                    semanticLabel: 'rawat inap',
                  ),
                  Padding(padding: EdgeInsets.only(top: 10.0)),
                  Text('Rawat Inap',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
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
      )
    ],
  ),
);

Widget carouselWidget = CarouselSlider(
  options: CarouselOptions(
    height: 200,
    aspectRatio: 16 / 9,
    viewportFraction: 0.8,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 3),
    autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(3.0, 7.0),
                blurRadius: 10,
                spreadRadius: -2,
              )
            ],
          ),
          child: Text(
            'text $i',
            style: const TextStyle(fontSize: 16.0),
          ),
        );
      },
    );
  }).toList(),
);

Widget spaceCarousel = const Padding(
  padding: EdgeInsets.only(bottom: 10.0),
  child: Text(
    'Panduan Penggunaan',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
);
