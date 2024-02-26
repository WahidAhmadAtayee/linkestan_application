import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
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
                // controller: ,
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
                // controller: ,
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
                onPressed: () {
                  //
                },
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
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(255, 17, 0, 1)),
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
}
