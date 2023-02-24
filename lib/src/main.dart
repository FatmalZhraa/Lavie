import 'package:flutter/material.dart';
import 'package:lavie/views/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: Login(),
      duration: 4000,
      imageSize: 65,
      imageSrc: "images/lavie.jpeg",
    );
    return MaterialApp(
      title: 'Splash screen Demo',
      home: example1,
    );
  }
}