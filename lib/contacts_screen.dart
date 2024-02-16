import 'package:flutter/material.dart';
import 'package:linkestan_application/tabBarPages_Contacts/emergency_number_contacts.dart';
import 'package:linkestan_application/tabBarPages_Contacts/my_number_contacts.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
                      bottomLeft: Radius.circular(150),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Positioned(
                        top: 15.0,
                        left: 15.0,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                          "Visiting Card",
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
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(140),
                        bottomLeft: Radius.circular(170),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 650.0,
                    child: Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          EmergencyNumberContacts(),
                          MyNumbersContacts(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 200.0,
            right: 30.0,
            left: 30.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TabBar(
                    labelStyle: TextStyle(fontSize: 20.0),
                    controller: tabController,
                    labelColor: Color.fromRGBO(255, 0, 0, 1),
                    indicatorColor: Color.fromRGBO(255, 0, 0, 1),
                    indicatorWeight: 4.0,
                    unselectedLabelColor: Color.fromRGBO(255, 0, 0, 0.43),
                    tabs: [
                      Tab(text: "Emergency"),
                      Tab(text: "Others"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 110.0,
            right: 30.0,
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
                      title: Column(children: [
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
                          height: 15,
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
                                borderRadius: BorderRadius.circular(30.0),
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
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
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
