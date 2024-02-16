import 'dart:io';

import 'package:flutter/material.dart';
import 'package:linkestan_application/contacts_screen.dart';
import 'package:linkestan_application/notes_screen.dart';
import 'package:linkestan_application/visiting_card_screen.dart';
import 'package:linkestan_application/websites_screen.dart';
import 'about_screen.dart';
import 'communication_network_screem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedValue;
  List languages = ["English", "دری", "پښتو"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Home",
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
      ),
      drawer: Drawer(
        shadowColor: const Color.fromRGBO(255, 0, 0, 1),
        backgroundColor: Color.fromARGB(210, 255, 255, 255),
        width: 268.0,
        child: Expanded(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 1),
                ),
                accountName: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 15.0,
                  ),
                  title: Text(
                    "Full-Name",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(197, 255, 224, 224),
                    ),
                  ),
                  minLeadingWidth: 0.5,
                ),
                accountEmail: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 15.0,
                  ),
                  title: Text(
                    "07xxxxxxxx",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(197, 255, 224, 224),
                    ),
                  ),
                  minLeadingWidth: 0.5,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "images/UserAccountsDrawerHeader_background.JPG"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 30.0,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                minLeadingWidth: 1.0,
              ),
              Divider(
                color: Color.fromRGBO(255, 0, 0, 1),
                indent: 20.0,
                endIndent: 20.0,
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                title: Row(
                  children: [
                    Text(
                      "Language",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 0, 0, 1),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    DropdownButton(
                      icon: null,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                      items: languages.map<DropdownMenuItem<String>>((var value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                minLeadingWidth: 1.0,
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                title: Text(
                  "Share App",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                minLeadingWidth: 1.0,
                onTap: () {
                  // Share.share("Share the app");
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                title: Text(
                  "LogOut",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                minLeadingWidth: 1.0,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                minLeadingWidth: 1.0,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return About();
                    }),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                title: Text(
                  "Exit",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                minLeadingWidth: 1.0,
                onTap: () {
                  exit(0);
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      "Version 0.1",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(255, 0, 0, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
                      bottomRight: Radius.circular(130),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 150,
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
                        topLeft: Radius.circular(220),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return VisitingCard();
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Notes();
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
            left: 15.0,
            child: Image.asset(
              "images/LinkestanLogo.png",
              width: 180.0,
              height: 180.0,
            ),
          ),
        ],
      ),
    );
  }
}
