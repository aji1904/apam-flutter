import 'package:flutter/material.dart';

class ProfilApp extends StatelessWidget {
  const ProfilApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          photoProfile,
          dataProfile,
        ],
      ),
    );
  }
}

Widget photoProfile = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Image(
      image: AssetImage('assets/images/L.png'),
      alignment: Alignment.center,
      width: 150,
      height: 150,
      semanticLabel: 'Your Photo',
    ),
  ],
);

Widget dataProfile = Container(
  margin: const EdgeInsets.only(top: 15.0),
  padding: const EdgeInsets.all(20.0),
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Colors.white,
  ),
  child: Column(
    children: const [
      Text(
        "Nomor Rekam Medis",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text("Aji Prasetyo"),
      Text("19-April-1998 (24 Tahun)"),
      Text("Laki-Laki"),
      Text("KTP : 1671111111111"),
      Text("BPJS : 111111222222"),
    ],
  ),
);
