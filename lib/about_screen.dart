import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(170),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: IconButton(
                          onPressed: () {
                            //
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        left: 100.0,
                        right: 100.0,
                        child: Text(
                          "About",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 30.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      color: Color.fromRGBO(255, 0, 0, 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(265),
                            bottomRight: Radius.circular(300),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        width: double.infinity,
                        height: 700.0,
                        child: Center(
                          // Add your information here
                          child: Text(
                            "Information",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Text(
                        "2024",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      bottom: 40.0,
                      right: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        
        Positioned(
            top: 80.0,
            left: 20.0,
            child: Container(
              height: 140.0,
              width: 140.0,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                // Add your picture
                child: Text(
                  "Photo",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
