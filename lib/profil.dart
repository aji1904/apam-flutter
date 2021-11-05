import 'package:flutter/material.dart';

class ProfilApp extends StatelessWidget {
  const ProfilApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          Container2,
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/rawat-jalan.png'),
            radius: 100,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black45,
            ),
            child: const Text(
              'Mia B',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Container1 = ClipRRect(
  borderRadius: BorderRadius.circular(200),
  child: Container(
    height: 200,
    color: Colors.amber,
  ),
);

Widget Container2 = Container(
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
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
