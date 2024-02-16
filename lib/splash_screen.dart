import 'package:flutter/material.dart';
import 'package:linkestan_application/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    _navigator();
    super.initState();
  }
  void _navigator() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return SignIn();
        },
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 0, 0, 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(255),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              width: double.infinity,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 90.0,
                  right: 50.0,
                  bottom: 20.0,
                ),
                child: Image.asset(
                  "images/LinkestanLogo.png",
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(170),
                  ),
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Welcome to\nLinkestan App",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Version 0.1",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
