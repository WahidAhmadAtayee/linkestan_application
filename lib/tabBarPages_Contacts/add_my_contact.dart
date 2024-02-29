import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';



class AddContactBT extends StatefulWidget {
   AddContactBT({super.key, required this.isButtonActive});
  bool isButtonActive;
  @override
  State<AddContactBT> createState() => _AddContactBTState();
}

class _AddContactBTState extends State<AddContactBT> {
  TextEditingController nameContactsController = TextEditingController();
  TextEditingController phoneNumberContactsController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
                    controller: nameContactsController,
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
                      labelText: translation(context).name,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: phoneNumberContactsController,
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
                      labelText: translation(context).phoneNumberSignUp,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: widget.isButtonActive == true ? () async {
                      var contactBox = await Hive.openBox("contacts");
                      Contacts contacts = Contacts(nameContactsController.text,
                          phoneNumberContactsController.text);
                      await contactBox.add(contacts);

                      nameContactsController.text = "";
                      phoneNumberContactsController.text = "";
                      Navigator.pop(context);
                      setState(() {});
                    } : null,
                    child: Text(
                      translation(context).addNewContact,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: widget.isButtonActive == true ? MaterialStatePropertyAll(
                          Color.fromRGBO(255, 0, 0, 1)) : MaterialStatePropertyAll(
                          Color.fromRGBO(255, 95, 95, 1)),
                      fixedSize: MaterialStateProperty.all(
                        Size(260, 40),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
    );
  }
}
