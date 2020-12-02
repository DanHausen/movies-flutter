import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'core/theme_app.dart';
import 'pages/movie_page.dart';
import 'package:custom_splash/custom_splash.dart';

void main() {
  runApp(MaterialApp(
    home: CustomSplash(
      imagePath: 'assets/movie-splash.png',
      backGroundColor: Colors.white10,
      animationEffect: 'zoom-in',
      logoSize: 200,
      home: MyApp(),
      duration: 2500,
      type: CustomSplashType.StaticDuration,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: kThemeApp,
      home: MoviePage(),
    );
  }
}