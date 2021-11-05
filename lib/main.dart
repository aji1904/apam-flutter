import 'package:flutter/material.dart';
import 'package:my_app/index.dart';

void main() => runApp(
      MaterialApp(
          title: 'APAM',
          theme: ThemeData(
            primaryColor: Colors.grey[800],
          ),
          home: const MainApp()),
    );
