import 'package:flutter/material.dart';
import 'package:my_app/index.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(
      MaterialApp(
        builder: (context, child) {
          return Directionality(
              textDirection: TextDirection.ltr, child: child!);
        },
        title: 'APAM',
        theme: ThemeData(
          primaryColor: Colors.grey[800],
        ),
        home: AnimatedSplashScreen(
          duration: 2000,
          splash: "assets/images/logo.png",
          nextScreen: const MainApp(),
          splashTransition: SplashTransition.slideTransition,
          pageTransitionType: PageTransitionType.topToBottom,
          backgroundColor: const Color.fromRGBO(231, 247, 233, 1),
        ),
      ),
    );
