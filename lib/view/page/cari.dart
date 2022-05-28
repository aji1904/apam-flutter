import 'package:flutter/material.dart';

class Searchtarif extends StatefulWidget {
  const Searchtarif({Key? key}) : super(key: key);

  @override
  State<Searchtarif> createState() => _SearchtarifState();
}

class _SearchtarifState extends State<Searchtarif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text(
        'Search tarif',
      )),
    );
  }
}
