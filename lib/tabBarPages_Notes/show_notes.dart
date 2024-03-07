import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';

class ShowNotes extends StatefulWidget {
  ShowNotes({
    super.key,
  });

  @override
  State<ShowNotes> createState() => _ShowNotesState();
}

class _ShowNotesState extends State<ShowNotes> {
  late Notes note;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
          future: Hive.openBox('note'),
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done) {
              return NotesDataList();
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Widget NotesDataList() {
    Box noteBox = Hive.box('note');

    return ValueListenableBuilder(
      valueListenable: noteBox.listenable(),
      builder: (context, Box box, child) {
        if (box.values.isEmpty) {
          return const Center(
            child: Text("There is not any data!"),
          );
        } else {
          return ListView.separated(
            padding: EdgeInsets.all(40.0),
            itemBuilder: (context, index) {
              TextEditingController noteTitleController =
                  TextEditingController();
              TextEditingController noteDescriptionController =
                  TextEditingController();
              final Notes notes = box.getAt(index);
              noteTitleController.text = notes.title;
              noteDescriptionController.text = notes.description_notes;
              return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 0.5),
                  ),
                  child: ListTile(
                    isThreeLine: true,
                    leading: Icon(Icons.notes),
                    title: Text(
                      notes.title,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 20.0),
                    ),
                    subtitle: Text(
                      notes.description_notes,
                      style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                      ),
                      textAlign: TextAlign.justify,
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
                                    icon: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              size: 20,
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                        Icon(
                                          Icons.edit_document,
                                          size: 150.0,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                        SizedBox(height: 15.0),
                                      ],
                                    ),
                                    title: Column(
                                      children: [
                                        TextField(
                                          controller: noteTitleController,
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
                                              Icons.title,
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            labelText:
                                                translation(context).title,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.text,
                                          cursorColor:
                                              Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                        SizedBox(height: 10.0),
                                        TextField(
                                          controller: noteDescriptionController,
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
                                              Icons.description,
                                              color:
                                                  Color.fromRGBO(255, 17, 0, 1),
                                            ),
                                            labelText: translation(context)
                                                .descriptionText,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.text,
                                          cursorColor:
                                              Color.fromRGBO(255, 0, 0, 1),
                                          maxLines: 3,
                                        ),
                                        SizedBox(height: 10.0),
                                        ElevatedButton(
                                          // Update the note
                                          onPressed: () {
                                            if (noteTitleController
                                                    .text.isNotEmpty &&
                                                noteDescriptionController
                                                    .text.isNotEmpty) {
                                              box.put(
                                                  index,
                                                  Notes(
                                                      noteTitleController.text,
                                                      noteDescriptionController
                                                          .text));
                                              Navigator.pop(context);
                                              showModalBottomSheet(
                                                backgroundColor: Color.fromRGBO(
                                                    255, 95, 95, 1),
                                                context: context,
                                                builder: (context) {
                                                  return SizedBox(
                                                    height: 40.0,
                                                    child: Center(
                                                      child: Text(
                                                        "Changes was applied!",
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            }else{
                                              showModalBottomSheet(
                                              backgroundColor: Color.fromRGBO(
                                                  255, 95, 95, 1),
                                              context: context,
                                              builder: (context) {
                                                return SizedBox(
                                                  height: 40.0,
                                                  child: Center(
                                                    child: Text(
                                                      "Add Title and Description!",
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                            }
                                          },
                                          child: Text(
                                            translation(context).change,
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: translation(context)
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
                                              Size(260, 35),
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
                              color: Color.fromRGBO(255, 255, 255, 1),
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
                                      size: 150.0,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    title: Text(
                                      translation(context).doYouWantToDelete,
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontSize: 25.0,
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
                                            // Delete the note
                                            onPressed: () {
                                              Box box = Hive.box('note');
                                              box.deleteAt(index);
                                              Navigator.pop(context);

                                              showModalBottomSheet(
                                                backgroundColor: Color.fromRGBO(
                                                    255, 95, 95, 1),
                                                context: context,
                                                builder: (context) {
                                                  return SizedBox(
                                                    height: 40.0,
                                                    child: Center(
                                                      child: Text(
                                                        "Note deleted!",
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              translation(context).yesBT,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontFamily: translation(context)
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
                                                Size(100, 30),
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
                                          SizedBox(width: 5.0),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              translation(context).noBT,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontFamily: translation(context)
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
                                                Size(100, 30),
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
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 5.0,
            ),
            itemCount: noteBox.length,
          );
        }
      },
    );
  }
}
