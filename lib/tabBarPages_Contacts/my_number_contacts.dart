import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

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

class MyNumbersContacts extends StatefulWidget {
  const MyNumbersContacts({super.key});

  @override
  State<MyNumbersContacts> createState() => _MyNumbersContactsState();
}
// launchUrl(dialNumber);
class _MyNumbersContactsState extends State<MyNumbersContacts> {
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
                      onPressed: () async {
                        final Uri dialNumber = Uri(
                          scheme: 'tel',
                          path: phoneContacts[index],
                        );
                        if (await canLaunchUrl(dialNumber)) {
                          await FlutterPhoneDirectCaller.callNumber(phoneContacts[index]);
                        } else {
                          throw "Could not launch $dialNumber";
                        }
                      },
                      icon: Icon(
                        Icons.call,
                        color: Color.fromRGBO(0, 255, 0, 1),
                      ),
                    ),
                    title: Text(
                      "${NameContacts[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: Text(
                      "${phoneContacts[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    iconPadding: EdgeInsets.only(right: 1.0),
                                    icon: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 15.0,
                                        bottom: 15.0,
                                      ),
                                      child: Image.asset(
                                        "images/Contacts_Logo.png",
                                        height: 150.0,
                                      ),
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
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                              ),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.person,
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            labelText: "Name",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                              ),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.phone,
                                              color:
                                                  Color.fromRGBO(255, 17, 0, 1),
                                            ),
                                            labelText: "Phone Number",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,
                                        ),
                                        SizedBox(height: 15),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Change",
                                            style: TextStyle(fontSize: 15.0),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Color.fromRGBO(255, 17, 0, 1),
                                            ),
                                            fixedSize:
                                                MaterialStateProperty.all(
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
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Color.fromRGBO(255, 17, 0, 1),
                                            ),
                                            fixedSize:
                                                MaterialStateProperty.all(
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
                        ),
                        SizedBox(height: 10.0),
                        Expanded(
                          child: IconButton(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          255, 0, 0, 1)),
                                              fixedSize:
                                                  MaterialStateProperty.all(
                                                Size(80, 20),
                                              ),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
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
                                              "No",
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          255, 0, 0, 1)),
                                              fixedSize:
                                                  MaterialStateProperty.all(
                                                Size(80, 20),
                                              ),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
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
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                itemCount: 3),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(255, 0, 0, 1),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      iconPadding: EdgeInsets.only(right: 1.0),
                      icon: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          Image.asset(
                            "images/Contacts_Logo.png",
                            width: 130.0,
                            height: 180.0,
                          ),
                        ],
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextField(
                            // controller: ,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
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
                            height: 10.0,
                          ),
                          TextField(
                            // controller: ,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
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
                          SizedBox(height: 15.0),
                          ElevatedButton(
                            onPressed: () {
                              //
                            },
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
                                  borderRadius: BorderRadius.circular(30.0),
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
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
