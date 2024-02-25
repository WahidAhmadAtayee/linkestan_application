import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';

class ShowNotes extends StatefulWidget {
  const ShowNotes({super.key});

  @override
  State<ShowNotes> createState() => _ShowNotesState();
}

class _ShowNotesState extends State<ShowNotes> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.all(40.0),
        itemBuilder: (context, index) {
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
                  "Title",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1), fontSize: 20.0),
                ),
                subtitle: Text(
                  "info...",
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
                                          color: Color.fromRGBO(255, 0, 0, 1),
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
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                                title: Column(
                                  children: [
                                    TextField(
                                      // controller: ,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.title,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                        labelText: translation(context).title,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      cursorColor: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    TextField(
                                      // controller: ,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                      cursorColor: Color.fromRGBO(255, 0, 0, 1),
                                      maxLines: 3,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        translation(context).change,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(255, 17, 0, 1),
                                        ),
                                        fixedSize: MaterialStateProperty.all(
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
                                  ),
                                ),
                                content: Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          translation(context).yesBT,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color.fromRGBO(255, 0, 0, 1)),
                                          fixedSize: MaterialStateProperty.all(
                                            Size(100, 30),
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          translation(context).noBT,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color.fromRGBO(255, 0, 0, 1)),
                                          fixedSize: MaterialStateProperty.all(
                                            Size(100, 30),
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
        itemCount: 4,
      ),
    );
  }
}
