import 'dart:io';

import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List emergencyNumbers_name = [
    "Ambulance",
    "Fire Station",
    "Police",
  ];
  List emergencyNumbers = [
    "102",
    "113",
    "119",
  ];
  List NameContacts = [
    "Ahmad",
    "Mohammad",
    "Ali",
  ];
  List phoneContacts = [
    "+93790325434",
    "0093782940110",
    "0703940029",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(280),
                ),
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
              width: double.infinity,
              height: 200,
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
                      "Contacts",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    bottom: 45.0,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              iconPadding: EdgeInsets.only(right: 1.0),
                              icon: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        size: 20,
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Icon(
                                    Icons.contacts,
                                    size: 100.0,
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                              title: Column(children: [
                                TextField(
                                  // controller: ,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Color.fromRGBO(255, 17, 0, 1),
                                    ),
                                    labelText: "Name",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  keyboardType: TextInputType.name,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextField(
                                  // controller: ,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.phone_android,
                                      color: Color.fromRGBO(255, 17, 0, 1),
                                    ),
                                    labelText: "Phone Number",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add Contact",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromRGBO(255, 17, 0, 1)),
                                    fixedSize: MaterialStateProperty.all(
                                      Size(260, 40),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          },
                        );
                      },
                      child: Text(
                        "Add New Contact",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 255, 255, 1),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          Size(250, 45),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
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
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                    bottomLeft: Radius.circular(170),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                width: double.infinity,
                height: 700,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 20.0,
                    right: 13.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Emergency Numbers:",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        thickness: 1.0,
                        endIndent: 180.0,
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${emergencyNumbers_name[index]}:\t\t\t",
                                        style: TextStyle(
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${emergencyNumbers[index]} ",
                                        style: TextStyle(
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 0.1,
                                ),
                            itemCount: 3),
                      ),
                      Text(
                        "Others:",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        thickness: 1.0,
                        endIndent: 180.0,
                      ),
                      Expanded(
                        child: ListView.separated(
                            padding: EdgeInsets.only(
                              right: 20.0,
                            ),
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            iconPadding:
                                                EdgeInsets.only(right: 1.0),
                                            icon: Column(
                                              children: [
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Icon(
                                                  Icons.contacts,
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                  size: 140,
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                              ],
                                            ),
                                            title: Column(
                                              children: [
                                                TextField(
                                                  // controller: ,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                      Icons.person,
                                                      color: Color.fromRGBO(
                                                          255, 0, 0, 1),
                                                    ),
                                                    labelText: "Name",
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  keyboardType:
                                                      TextInputType.name,
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                TextField(
                                                  // controller: ,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                      Icons.phone,
                                                      color: Color.fromRGBO(
                                                          255, 17, 0, 1),
                                                    ),
                                                    labelText: "Phone Number",
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Change",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          255, 17, 0, 1),
                                                    ),
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all(
                                                      Size(260, 30),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          255, 17, 0, 1),
                                                    ),
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all(
                                                      Size(260, 30),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    )),
                                title: Text(
                                  "${NameContacts[index]}",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  "${phoneContacts[index]}",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          iconPadding:
                                              EdgeInsets.only(right: 1.0),
                                          icon: Icon(
                                            Icons.delete,
                                            size: 140.0,
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                          ),
                                          title: Text(
                                            "Do you want to delete?",
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          content: Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "YES",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Color.fromRGBO(
                                                                255, 0, 0, 1)),
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all(
                                                      Size(80, 20),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "NO",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Color.fromRGBO(
                                                                255, 0, 0, 1)),
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all(
                                                      Size(80, 20),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
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
                                  icon: Icon(
                                    Icons.delete,
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                onTap: () {},
                              );
                            },
                            separatorBuilder: (context, index) => Divider(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                            itemCount: 3),
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
