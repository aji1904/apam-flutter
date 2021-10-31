import 'package:flutter/material.dart';
import 'package:my_app/index.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'APAM',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: const MainApp()));
