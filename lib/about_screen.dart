import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "About",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(140),
                ),
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
              width: double.infinity,
              height: 211,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 5.0, bottom: 5.0, right: 150.0),
                child: Container(
                  height: 10,
                  width: 10,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    // Add your picture
                    child: Text(
                      "Photo",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(255, 0, 0, 1),
                      ),
                    ),
                  ),
                ),
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
                        topLeft: Radius.circular(300),
                        bottomRight: Radius.circular(330),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 700,
                    child: Center(
                      // Add your information here
                      child: Text(
                        "Information",
                        style: TextStyle(
                          fontSize: 30,
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
                  bottom: 40,
                  left: 330,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
