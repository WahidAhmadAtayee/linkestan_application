import 'package:flutter/material.dart';
import 'package:linkestan_application/contacts_screen.dart';
import 'package:linkestan_application/websites_screen.dart';
import 'communication_network_screem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
                    border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(140),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 150,
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Positioned(
                        top: 15.0,
                        left: 15.0,
                        child: IconButton(
                          onPressed: () {
                            //
                          },
                          icon: Icon(
                            Icons.menu,
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
                          "Home",
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
                    child: Stack(
                      children: [
                        Expanded(
                          child: Positioned(
                            top: 65.0,
                            left: 70.0,
                            child: GestureDetector(
                              onTap: () {
                                //
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
                            right: 20.0,
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
                            left: 55.0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Contacts();
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
                                    child: Image.asset("images/contacts.png"),
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
                            right: 35.0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Websites();
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
                              onTap: () {
                                //
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
            ],
          ),
          Positioned(
            bottom: 65.0,
            right: 20.0,
            child: Image.asset(
              "images/LinkestanLogo.png",
              width: 200.0,
              height: 200.0,
            ),
          ),
        ],
      ),
    );
  }
}
