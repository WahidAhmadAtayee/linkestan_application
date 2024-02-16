import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Positioned(
                        top: 15.0,
                        left: 15.0,
                        child: IconButton(
                          onPressed: () {
                            //
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        left: 100.0,
                        right: 100.0,
                        child: Text(
                          "Notes",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 30.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(140),
                        bottomLeft: Radius.circular(170),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 650.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 20.0,
                              left: 40.0,
                              right: 40.0,
                              bottom: 40.0,
                            ),
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
                                    contentPadding: EdgeInsets.all(1.5),
                                    leading: IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              iconPadding:
                                                  EdgeInsets.only(right: 1.0),
                                              icon: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: IconButton(
                                                      icon: Icon(
                                                        Icons.close,
                                                        size: 20,
                                                        color: Color.fromRGBO(
                                                            255, 0, 0, 1),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.edit_document,
                                                    size: 150.0,
                                                    color: Color.fromRGBO(
                                                        255, 0, 0, 1),
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
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              255, 0, 0, 1),
                                                        ),
                                                      ),
                                                      prefixIcon: Icon(
                                                        Icons.title,
                                                        color: Color.fromRGBO(
                                                            255, 0, 0, 1),
                                                      ),
                                                      labelText: "Title",
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.text,
                                                    cursorColor: Color.fromRGBO(
                                                        255, 0, 0, 1),
                                                  ),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  TextField(
                                                    // controller: ,
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              255, 0, 0, 1),
                                                        ),
                                                      ),
                                                      prefixIcon: Icon(
                                                        Icons.subtitles,
                                                        color: Color.fromRGBO(
                                                            255, 17, 0, 1),
                                                      ),
                                                      labelText: "Subtitle",
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                    keyboardType:
                                                        TextInputType.text,
                                                    cursorColor: Color.fromRGBO(
                                                        255, 0, 0, 1),
                                                    maxLines: 3,
                                                  ),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "CHANGE",
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                        Color.fromRGBO(
                                                            255, 17, 0, 1),
                                                      ),
                                                      fixedSize:
                                                          MaterialStateProperty
                                                              .all(
                                                        Size(260, 35),
                                                      ),
                                                      shape: MaterialStateProperty
                                                          .all<
                                                              RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                    title: Text(
                                      "Title",
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                    subtitle: Text(
                                      "info...",
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              iconPadding:
                                                  EdgeInsets.only(right: 1.0),
                                              icon: Icon(
                                                Icons.delete,
                                                size: 150.0,
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                              ),
                                              title: Text(
                                                "Do you want to delete?",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                  fontSize: 25.0,
                                                ),
                                              ),
                                              content: Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        "YES",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1)),
                                                        fixedSize:
                                                            MaterialStateProperty
                                                                .all(
                                                          Size(100, 30),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
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
                                                        "NO",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1)),
                                                        fixedSize:
                                                            MaterialStateProperty
                                                                .all(
                                                          Size(100, 30),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
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
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              height: 5.0,
                            ),
                            itemCount: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 120.0,
            right: 30.0,
            child: ElevatedButton(
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
                            "images/Notes_Logo.png",
                            width: 200.0,
                            height: 150.0,
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
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.title,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              labelText: "Title",
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
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.subtitles,
                                color: Color.fromRGBO(255, 17, 0, 1),
                              ),
                              labelText: "Subtitle",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            cursorColor: Color.fromRGBO(255, 0, 0, 1),
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              "Add Note",
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 17, 0, 1)),
                              fixedSize: MaterialStateProperty.all(
                                Size(260, 35),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
              child: Text(
                "Add New Note",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(255, 255, 255, 1),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size(250.0, 35.0),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
