import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/models/linkestan_models.dart';

class AddNotes extends StatefulWidget {
  AddNotes({super.key, required this.isButtonActive});
  bool isButtonActive;
  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  TextEditingController noteTitleController = TextEditingController();
  TextEditingController noteDescriptionController = TextEditingController();

  String t = "";
  String d = "";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 45.0,
            right: 45.0,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              Icon(
                Icons.note_add,
                color: Color.fromRGBO(255, 0, 0, 1),
                size: 150.0,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: noteTitleController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.note,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: translation(context).title,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.name,
                cursorColor: Color.fromRGBO(255, 0, 0, 1),
              ),
              SizedBox(height: 15.0),
              TextField(
                controller: noteDescriptionController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.description,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: translation(context).descriptionText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: 8,
                keyboardType: TextInputType.text,
                cursorColor: Color.fromRGBO(255, 0, 0, 1),
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: widget.isButtonActive == true
                    ? () {
                        if (noteTitleController.text.isEmpty ||
                            noteDescriptionController.text.isEmpty) {
                          showModalBottomSheet(
                            backgroundColor: Color.fromRGBO(255, 95, 95, 1),
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: 40.0,
                                child: Center(
                                  child: Text(
                                    "Add Title and Description!",
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          add(noteTitleController.text,
                              noteDescriptionController.text);

                          showModalBottomSheet(
                            backgroundColor: Color.fromRGBO(255, 95, 95, 1),
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: 40.0,
                                child: Center(
                                  child: Text(
                                    "Added successfully!",
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                          setState(() {
                            noteTitleController.text = '';
                            noteDescriptionController.text = '';
                          });
                        }
                      }
                    : null,
                child: Text(
                  translation(context).addNewNoteBT,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: translation(context).changeLanguage == "English"
                        ? "Times_New_Java"
                        : "BNaznn",
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: widget.isButtonActive == true
                      ? MaterialStatePropertyAll(Color.fromRGBO(255, 0, 0, 1))
                      : MaterialStatePropertyAll(
                          Color.fromRGBO(255, 95, 95, 1)),
                  fixedSize: MaterialStateProperty.all(
                    Size(330, 45),
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
        ),
      ),
    );
  }

  add(var textTitle, var textDescription) async {
    var noteBox = await Hive.openBox("note");
    Notes notes = Notes(textTitle, textDescription);
    await noteBox.add(notes);
  }
}
