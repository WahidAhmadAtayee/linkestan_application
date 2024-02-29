import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:linkestan_application/tabBarPages_Contacts/add_my_contact.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class MyNumbersContacts extends StatefulWidget {
   MyNumbersContacts({super.key, required this.isButtonActive});
  bool isButtonActive;

  @override
  State<MyNumbersContacts> createState() => _MyNumbersContactsState();
}

class _MyNumbersContactsState extends State<MyNumbersContacts> {
  late Contacts contacts;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Hive.openBox('contacts'),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return ContactDataList();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget ContactDataList() {
    Box contactsBox = Hive.box('contacts');
    return ValueListenableBuilder(
      valueListenable: contactsBox.listenable(),
      builder: (context, Box cbox, child) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            right: 50.0,
            left: 50.0,
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
                      TextEditingController nameContactsController =
                          TextEditingController();
                      TextEditingController phoneNumberContactsController =
                          TextEditingController();
                      final Contacts contacts = contactsBox.getAt(index);
                      nameContactsController.text = contacts.nameContacts;
                      phoneNumberContactsController.text = contacts.phoneNumberContacts;
                      return ListTile(
                        leading: IconButton(
                          onPressed: () async {
                            final Uri dialNumber = Uri(
                              scheme: 'tel',
                              path: contacts.phoneNumberContacts[index],
                            );
                            if (await canLaunchUrl(dialNumber)) {
                              await FlutterPhoneDirectCaller.callNumber(
                                  contacts.phoneNumberContacts[index]);
                            } else {
                              throw "Could not launch $dialNumber";
                            }
                          },
                          icon: translation(context).changeLanguage == "English"
                              ? Icon(
                                  Icons.phone,
                                  color: Color.fromRGBO(0, 255, 0, 1),
                                )
                              : Icon(
                                  Icons.phone_enabled,
                                  color: Color.fromRGBO(0, 255, 0, 1),
                                ),
                        ),
                        title: Text(
                          contacts.nameContacts,
                          style: TextStyle(
                            color: Color.fromRGBO(100, 100, 100, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          contacts.phoneNumberContacts,
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
                                        iconPadding:
                                            EdgeInsets.only(right: 1.0),
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
                                              controller:
                                                  nameContactsController,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  borderSide: BorderSide(
                                                    color: Color.fromRGBO(
                                                        255, 0, 0, 1),
                                                  ),
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.person,
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                ),
                                                labelText:
                                                    translation(context).name,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              keyboardType: TextInputType.name,
                                            ),
                                            SizedBox(height: 15),
                                            TextField(
                                              controller:
                                                  phoneNumberContactsController,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  borderSide: BorderSide(
                                                    color: Color.fromRGBO(
                                                        255, 0, 0, 1),
                                                  ),
                                                ),
                                                prefixIcon: Icon(
                                                  Icons.phone,
                                                  color: Color.fromRGBO(
                                                      255, 17, 0, 1),
                                                ),
                                                labelText: translation(context)
                                                    .phoneNumberSignUp,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              keyboardType: TextInputType.phone,
                                            ),
                                            SizedBox(height: 15.0),
                                            ElevatedButton(
                                              onPressed: () {
                                                contactsBox.putAt(index, Contacts(nameContactsController.text, phoneNumberContactsController.text));
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                translation(context).change,
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontFamily: translation(
                                                                  context)
                                                              .changeLanguage ==
                                                          "English"
                                                      ? "Times_New_Java"
                                                      : "BNaznn",
                                                ),
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
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.0),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                translation(context).cancelBT,
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontFamily: translation(
                                                                  context)
                                                              .changeLanguage ==
                                                          "English"
                                                      ? "Times_New_Java"
                                                      : "BNaznn",
                                                ),
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
                                                shape:
                                                    MaterialStateProperty.all<
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
                                        iconPadding:
                                            EdgeInsets.only(right: 1.0),
                                        icon: Icon(
                                          Icons.delete,
                                          size: 140.0,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                        title: Text(
                                          translation(context)
                                              .doYouWantToDelete,
                                          style: TextStyle(
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                            fontSize: 20.0,
                                            fontFamily: translation(context)
                                                        .changeLanguage ==
                                                    "English"
                                                ? "Times_New_Java"
                                                : "BNaznn",
                                          ),
                                        ),
                                        content: Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Box contactBox =
                                                      Hive.box('contacts');
                                                  contactBox.deleteAt(index);
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  translation(context).yesBT,
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontFamily: translation(
                                                                    context)
                                                                .changeLanguage ==
                                                            "English"
                                                        ? "Times_New_Java"
                                                        : "BNaznn",
                                                  ),
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
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10.0),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  translation(context).noBT,
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontFamily: translation(
                                                                    context)
                                                                .changeLanguage ==
                                                            "English"
                                                        ? "Times_New_Java"
                                                        : "BNaznn",
                                                  ),
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
                                                  shape:
                                                      MaterialStateProperty.all<
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
                    itemCount: contactsBox.length),
              ),
              Align(
                  alignment: translation(context).changeLanguage == "English"
                      ? Alignment.bottomRight
                      : Alignment.bottomLeft,
                  child: AddContactBT(isButtonActive: widget.isButtonActive))
            ],
          ),
        );
      },
    );
  }
}
