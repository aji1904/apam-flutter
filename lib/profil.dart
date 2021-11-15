import 'package:flutter/material.dart';

class ProfilApp extends StatelessWidget {
  const ProfilApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: [
          Container2,
          Positioned(
            child: Center(
              child: Container1,
            ),
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}

Widget Container1 = ClipRRect(
  borderRadius: BorderRadius.circular(200),
  child: Container(
    color: Colors.amber,
  ),
);

Widget Container2 = Container(
  alignment: const Alignment(20,10),
  height: 200,
  margin: const EdgeInsets.all(20),
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    color: Colors.red,
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(3.0, 7.0),
        blurRadius: 10,
        spreadRadius: -2,
      )
    ],
  ),
);

Widget Container3 = Container(
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Colors.blueGrey,
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(3.0, 7.0),
        blurRadius: 10,
        spreadRadius: -2,
      )
    ],
  ),
);
