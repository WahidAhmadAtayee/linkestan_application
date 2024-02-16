import 'package:flutter/material.dart';

class MyNumbersContacts extends StatefulWidget {
  const MyNumbersContacts({super.key});

  @override
  State<MyNumbersContacts> createState() => _MyNumbersContactsState();
}

class _MyNumbersContactsState extends State<MyNumbersContacts> {
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
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        right: 30.0,
        left: 30.0,
        bottom: 40.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                              iconPadding: EdgeInsets.only(right: 1.0),
                              icon: Column(
                                children: [
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Image.asset(
                                    "images/Contacts_Logo.png",
                                    width: 130.0,
                                    height: 180.0,
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
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Color.fromRGBO(255, 0, 0, 1),
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
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.phone,
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
                                      "Change",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        Color.fromRGBO(255, 17, 0, 1),
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(260, 30),
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
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        Color.fromRGBO(255, 17, 0, 1),
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(260, 30),
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
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Color.fromRGBO(255, 0, 0, 1),
                      ),
                    ),
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
                              iconPadding: EdgeInsets.only(right: 1.0),
                              icon: Icon(
                                Icons.delete,
                                size: 140.0,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                "Do you want to delete?",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontSize: 20.0,
                                ),
                              ),
                              content: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "YES",
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromRGBO(255, 0, 0, 1)),
                                        fixedSize: MaterialStateProperty.all(
                                          Size(80, 20),
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
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "NO",
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromRGBO(255, 0, 0, 1)),
                                        fixedSize: MaterialStateProperty.all(
                                          Size(80, 20),
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
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            iconPadding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            icon: Icon(
                              Icons.call,
                              size: 100.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            title: Text(
                              "Do you want to call?",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 0, 0, 1),
                                fontSize: 20.0,
                              ),
                            ),
                            content: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "CALL",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(255, 0, 0, 1)),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(80, 20),
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
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "NO",
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(255, 0, 0, 1)),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(80, 20),
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
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
