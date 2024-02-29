import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkestan_application/contacts_screen.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/navbar.dart';
import 'package:linkestan_application/notes_screen.dart';
import 'package:linkestan_application/visit_card_screen.dart';
import 'package:linkestan_application/websites_screen.dart';
import 'communication_network_screem.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, this.isActive});
  bool? isActive;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List images = [
    "images/visiting_card.png",
    "images/communication_network.png",
    "images/contacts.png",
    "images/website.png",
    "images/notes.png",
  ];
  

  @override
  Widget build(BuildContext context) {
    List names = [
      translation(context).visitCard,
      translation(context).communicationNetwork,
      translation(context).contacts,
      translation(context).websites,
      translation(context).notes,
    ];
    List pages = [
    VisitingCard(isButtonActive: widget.isActive!),
    Communication_Network(isButtonActive: widget.isActive!),
    MyContacts(isButtonActive: widget.isActive!),
    WebsitesCategoryPage(isButtonActive: widget.isActive!),
    Notes(isButtonActive: widget.isActive!),
  ];
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 0, 0, 1),
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Color.fromRGBO(255, 255, 255, 1),
              size: 30.0,
            ),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          title: Text(
            translation(context).homeTitle,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 30,
              fontFamily: translation(context).changeLanguage == "English" ? "WLRoyalFlutterBold" : "alvi_Nastaleeq",
            ),
          ),
          actions: [
            PopupMenuButton(
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
                      translation(context).logOut,
                      style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                        fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
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
          ],
        ),
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
                      borderRadius:
                          translation(context).changeLanguage == "English"
                              ? BorderRadius.only(
                                  bottomRight: Radius.circular(160),
                                )
                              : BorderRadius.only(
                                  bottomLeft: Radius.circular(160),
                                ),
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                    width: double.infinity,
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(255, 0, 0, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        borderRadius:
                            translation(context).changeLanguage == "English"
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                    bottomRight: Radius.circular(200),
                                  )
                                : BorderRadius.only(
                                    topRight: Radius.circular(200),
                                    bottomLeft: Radius.circular(200),
                                  ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      width: double.infinity,
                      height: 700,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 110.0,
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
                                        fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
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
              top: 20.0,
              left: translation(context).changeLanguage == "English" ? 5.0 : null,
              right: translation(context).changeLanguage == "دری" ||
                      translation(context).changeLanguage == "پښتو"
                  ? 5.0
                  : null,
              child: Image.asset(
                "images/LinkestanLogo.png",
                width: 180.0,
                height: 180.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
