import 'package:app/view/main.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedSplashScreen(
          splashIconSize: 110.0,
          duration: 3000,
          splash: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              "assets/bunda-medika.png",
            ),
          ),
          nextScreen: const Mainpage(),
        ),
      ),
    );
  }
}
