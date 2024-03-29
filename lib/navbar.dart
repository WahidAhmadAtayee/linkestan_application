import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/main.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:share/share.dart';
import 'package:linkestan_application/about_screen.dart';
import 'package:linkestan_application/languageClasses/language.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var full_name;
  var phoneNumber_showNavBar;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Hive.openBox('users'),
        builder: (context, snapshot) {
          return DrawerMenu();
        });
  }

  Widget DrawerMenu() {
    Box usersBox = Hive.box("users");
    

    return ValueListenableBuilder(
      valueListenable: usersBox.listenable(),
      builder: (context, Box box, child) {
        usersBox.keys.forEach((key) {
          Users user = box.get(key);
          full_name = user.full_name;
          phoneNumber_showNavBar = user.phone;
        });
        return Drawer(
          shadowColor: const Color.fromRGBO(255, 0, 0, 1),
          backgroundColor: Color.fromARGB(210, 255, 255, 255),
          width: 268.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  child:
                      full_name.isNotEmpty ? Text(full_name[0]) : Text("photo"),
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
                      full_name.isNotEmpty
                          ? full_name
                          : translation(context).yourName,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(197, 255, 224, 224),
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
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
                    phoneNumber_showNavBar.isNotEmpty
                        ? phoneNumber_showNavBar
                        : translation(context).yourNumber,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(197, 255, 224, 224),
                      fontFamily:
                          translation(context).changeLanguage == "English"
                              ? "Times_New_Java"
                              : "BNaznn",
                    ),
                  ),
                  minLeadingWidth: 0.5,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: translation(context).changeLanguage == "English"
                        ? AssetImage(
                            "images/UserAccountsDrawerHeader_background_en.JPG")
                        : AssetImage(
                            "images/UserAccountsDrawerHeader_background_fa.JPG"),
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
                            translation(context).languageText,
                            style: TextStyle(
                              color: Color.fromRGBO(100, 100, 100, 1),
                              fontFamily: translation(context).changeLanguage ==
                                      "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
                            ),
                          ),
                          SizedBox(width: 45.0),
                          DropdownButton<Language>(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromRGBO(255, 0, 0, 0),
                            ),
                            hint: Text(translation(context).changeLanguage),
                            underline: const SizedBox(),
                            onChanged: (Language? language) async {
                              if (language != null) {
                                Locale _locale =
                                    await setLocale(language.languageCode);
                                MyApp.setLocale(context, _locale);
                              }
                            },
                            items: Language.languageList()
                                .map<DropdownMenuItem<Language>>((var e) {
                              return DropdownMenuItem<Language>(
                                value: e,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e.flag,
                                      style: TextStyle(fontSize: 10.0),
                                    ),
                                    Text(
                                      e.name,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color.fromRGBO(57, 57, 57, 1),
                                        fontFamily: translation(context)
                                                    .changeLanguage ==
                                                "English"
                                            ? "Times_New_Java"
                                            : "BNaznn",
                                      ),
                                    ),
                                  ],
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
                        translation(context).changeProfilePhoto,
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
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
                                height:
                                    MediaQuery.of(context).size.height / 7.5,
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
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                              ),
                                              Text(
                                                translation(context).gallery,
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                  fontFamily: translation(
                                                                  context)
                                                              .changeLanguage ==
                                                          "English"
                                                      ? "Times_New_Java"
                                                      : "BNaznn",
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
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                              ),
                                              Text(
                                                translation(context).camera,
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                  fontFamily: translation(
                                                                  context)
                                                              .changeLanguage ==
                                                          "English"
                                                      ? "Times_New_Java"
                                                      : "BNaznn",
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
                        translation(context).changePasswordAccount,
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
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
                        translation(context).shareApp,
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
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
                        translation(context).aboutUS,
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
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
                        translation(context).exitApp,
                        style: TextStyle(
                          color: Color.fromRGBO(100, 100, 100, 1),
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
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
                      translation(context).version,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
