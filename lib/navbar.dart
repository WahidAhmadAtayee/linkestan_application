import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:linkestan_application/about_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List languages = ["English", "دری", "پښتو"];

  var dropDownValue = "English";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: const Color.fromRGBO(255, 0, 0, 1),
      backgroundColor: Color.fromARGB(210, 255, 255, 255),
      width: 268.0,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            ),
            accountName: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: ListTile(
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
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.language,
                    color: Color.fromRGBO(100, 100, 100, 1),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                        ),
                      ),
                      SizedBox(
                        width: 45.0,
                      ),
                      DropdownButton(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(255, 0, 0, 0),
                        ),
                        underline: Divider(
                          color: Color.fromRGBO(255, 0, 0, 0),
                        ),
                        value: dropDownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue = newValue!;
                          });
                        },
                        items: languages
                            .map<DropdownMenuItem<String>>((var value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Color.fromRGBO(100, 100, 100, 1),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  minLeadingWidth: 1.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_4,
                    color: Color.fromRGBO(100, 100, 100, 1),
                  ),
                  title: Text(
                    "Change profile photo",
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                    ),
                  ),
                  minLeadingWidth: 1.0,
                  onTap: () {
                    showModalBottomSheet(
                      barrierColor: Color.fromRGBO(255, 0, 0, 0.3),
                      showDragHandle: true,
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
                      context: context,
                      builder: (builder) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 7.5,
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      //
                                    },
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.image,
                                            size: 70,
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                          ),
                                          Text(
                                            "Gallery",
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      //
                                    },
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.add_a_photo,
                                            size: 70,
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                          ),
                                          Text(
                                            "Camera",
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(100, 100, 100, 1),
                  ),
                  title: Text(
                    "Chage password account",
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                    ),
                  ),
                  minLeadingWidth: 1.0,
                  onTap: () {
                    //
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Color.fromRGBO(100, 100, 100, 1),
                  ),
                  title: Text(
                    "Share App",
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                    ),
                  ),
                  minLeadingWidth: 1.0,
                  onTap: () {
                    Share.share("Share the app");
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Color.fromRGBO(100, 100, 100, 1),
                  ),
                  title: Text(
                    "About us",
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
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
                    "Exit App",
                    style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                    ),
                  ),
                  minLeadingWidth: 1.0,
                  onTap: () {
                    exit(0);
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(255, 0, 0, 1),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 7.5, top: 7.5),
                child: Text(
                  "Version 0.1",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromRGBO(255, 255, 255, 0.4),
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
