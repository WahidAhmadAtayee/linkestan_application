import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(260),
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
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(167),
                  ),
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to\nLinkestan App",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(
                      height: 85.0,
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
