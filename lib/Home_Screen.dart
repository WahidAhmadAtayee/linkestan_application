import 'package:flutter/material.dart';
import 'communication_network_screem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(140),
                ),
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
              width: double.infinity,
              height: 150,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 5.0, right: 210.0),
                child: Image.asset("images/LinkestanLogo.png"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(240),
                    bottomRight: Radius.circular(330),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                width: double.infinity,
                height: 700,
                child: Center(
                  child: Stack(
                    children: [
                      Expanded(
                        child: Positioned(
                          top: 65.0,
                          left: 60.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35),
                                    ),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child:
                                      Image.asset("images/visiting_card.png"),
                                ),
                                Text(
                                  "Visiting Card",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(255, 17, 0, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Positioned(
                          top: 65.0,
                          left: 240.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Communication_Network();
                                }),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35),
                                    ),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Image.asset(
                                      "images/communication_network.png"),
                                ),
                                Text(
                                  "Communication\nNetwork",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromRGBO(255, 17, 0, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Positioned(
                          top: 280.0,
                          left: 40.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35),
                                    ),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child:
                                      Image.asset("images/contacts_logo.png"),
                                ),
                                Text(
                                  "Contacts",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(255, 17, 0, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Positioned(
                          top: 280.0,
                          left: 220.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35),
                                    ),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Image.asset("images/website.png"),
                                ),
                                Text(
                                  "Websites",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(255, 17, 0, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Positioned(
                          top: 487.0,
                          left: 20.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35),
                                      bottomLeft: Radius.circular(35),
                                      bottomRight: Radius.circular(35),
                                    ),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Image.asset("images/notes.png"),
                                ),
                                Text(
                                  "Notes",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(255, 17, 0, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
