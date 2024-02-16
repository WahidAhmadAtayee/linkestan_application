import 'package:flutter/material.dart';
import 'package:linkestan_application/signin_screen.dart';
import 'package:linkestan_application/splash_screen.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: {
        '/nextScreen': (context) => SignIn(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
