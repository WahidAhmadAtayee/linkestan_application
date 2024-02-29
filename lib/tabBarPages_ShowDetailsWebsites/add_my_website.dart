import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';

class AddWebsites extends StatefulWidget {
  const AddWebsites({super.key});

  @override
  State<AddWebsites> createState() => _AddWebsitesState();
}

class _AddWebsitesState extends State<AddWebsites> {
  TextEditingController websiteNameController = TextEditingController();
  TextEditingController websiteURLController = TextEditingController();
  TextEditingController websiteDescriptionController = TextEditingController();

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
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 20,
                        color: Color.fromRGBO(255, 17, 0, 1),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Image.asset(
                    "images/Website_Logo.png",
                    width: 200.0,
                    height: 150.0,
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
              title: Column(
                children: [
                  TextField(
                    controller: websiteNameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.web,
                        color: Color.fromRGBO(255, 17, 0, 1),
                      ),
                      labelText: translation(context).websiteName,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: websiteURLController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.link,
                        color: Color.fromRGBO(255, 17, 0, 1),
                      ),
                      labelText: translation(context).urlText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.url,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: websiteDescriptionController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.description,
                        color: Color.fromRGBO(255, 17, 0, 1),
                      ),
                      labelText: translation(context).descriptionText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    maxLength: 150,
                    maxLines: 2,
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () async {
                      var websiteBox = await Hive.openBox("websites");
                      Websites websites = Websites(websiteNameController.text, websiteURLController.text, websiteDescriptionController.text,);
                      await websiteBox.add(websites);

                      websiteNameController.text = "";
                      websiteURLController.text = "";
                      websiteDescriptionController.text = "";
                      Navigator.pop(context);
                      setState(() {
                        
                      });
                    },
                    child: Text(
                      translation(context).addNewWebSitesBT,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 17, 0, 1)),
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
