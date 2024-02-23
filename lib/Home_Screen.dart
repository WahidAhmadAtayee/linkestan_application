import 'package:flutter/material.dart';
import 'package:linkestan_application/contacts_screen.dart';
import 'package:linkestan_application/navbar.dart';
import 'package:linkestan_application/notes_screen.dart';
import 'package:linkestan_application/visit_card_screen.dart';
import 'package:linkestan_application/websites_screen.dart';
import 'communication_network_screem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List names = [
    "Visit_Card",
    "Communication\nNetwork",
    "Contacts",
    "Websites",
    "Notes",
  ];
  List images = [
    "images/visiting_card.png",
    "images/communication_network.png",
    "images/contacts.png",
    "images/website.png",
    "images/notes.png",
  ];
  List pages = [
    VisitingCard(),
    Communication_Network(),
    Contacts(),
    Websites(),
    Notes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavBar(),
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
                      bottomRight: Radius.circular(160),
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
                          icon: Icon(
                            Icons.menu,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 30.0,
                          ),
                          onPressed: () =>
                              _scaffoldKey.currentState?.openDrawer(),
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
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        right: 15.0,
                        child: PopupMenuButton(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              padding: EdgeInsets.all(0.5),
                              child: ListTile(
                                leading: Icon(
                                  Icons.logout,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                title: Text(
                                  "Log out",
                                  style: TextStyle(
                                    color: Color.fromRGBO(100, 100, 100, 1),
                                  ),
                                ),
                                minLeadingWidth: 1.0,
                                onTap: () {
                                  //
                                },
                              ),
                            ),
                          ],
                        ),
                        //
                        //
                        //
                        //
                        //
                        //
                        //
                        //
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
                        topLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 700,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 90.0,
                        bottom: 20.0,
                      ),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          mainAxisSpacing: 11.0,
                          crossAxisSpacing: 11.0,
                        ),
                        itemCount: names.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return pages[index];
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
                                  child: Image.asset(images[index]),
                                ),
                                Expanded(
                                  child: Text(
                                    names[index],
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(255, 17, 0, 1),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 60.0,
            left: 5.0,
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


