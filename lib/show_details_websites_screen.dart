import 'package:flutter/material.dart';

class ShowDetailsWebsites extends StatefulWidget {
  const ShowDetailsWebsites({super.key});

  @override
  State<ShowDetailsWebsites> createState() => _ShowDetailsWebsitesState();
}

class _ShowDetailsWebsitesState extends State<ShowDetailsWebsites> {
  List websiteLinks = [
    "www.google.com",
    "www.youtube.com",
    "www.flutter.dev",
    "www.javatpoint.com",
  ];
  List websiteDescriptions = [
    "Description_1",
    "Description_2",
    "Description_3",
    "Description_4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(280),
                ),
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
              width: double.infinity,
              height: 200,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Positioned(
                    top: 10.0,
                    left: 10.0,
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
                    left: 130.0,
                    child: Text(
                      "Government",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    right: 10.0,
                    child: IconButton(
                      onPressed: () {
                        //
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    bottom: 30.0,
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
                                    "images/Website_Logo.png",
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
                                      prefixIcon: Icon(
                                        Icons.web,
                                        color: Color.fromRGBO(255, 17, 0, 1),
                                      ),
                                      labelText: "URL",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    keyboardType: TextInputType.url,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextField(
                                    // controller: ,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.description,
                                        color: Color.fromRGBO(255, 17, 0, 1),
                                      ),
                                      labelText: "Description",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                    maxLength: 150,
                                    maxLines: 2,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(255, 17, 0, 1)),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(260, 30),
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
                      child: Text(
                        "Add New Website",
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
                          // Set the width and height of the button
                          Size(250, 45),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
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
                    topRight: Radius.circular(150),
                    bottomLeft: Radius.circular(170),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                width: double.infinity,
                height: 700,
                child: Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                      left: 50.0,
                      right: 50.0,
                    ),
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            color: Color.fromRGBO(255, 0, 0, 1),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 3.0),
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
                                            alignment: Alignment.topRight,
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
                                              prefixIcon: Icon(
                                                Icons.web,
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                              ),
                                              labelText: "URL",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                              ),
                                            ),
                                            keyboardType: TextInputType.url,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          TextField(
                                            // controller: ,
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.description,
                                                color: Color.fromRGBO(
                                                    255, 17, 0, 1),
                                              ),
                                              labelText: "Description",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                              ),
                                            ),
                                            keyboardType:
                                                TextInputType.text,
                                            maxLength: 150,
                                            maxLines: 2,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "CHANGE",
                                              style:
                                                  TextStyle(fontSize: 20),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          255, 17, 0, 1)),
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
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                            title: Text(
                              "${websiteLinks[index]}",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 20.0,
                              ),
                            ),
                            subtitle: Text(
                              "${websiteDescriptions[index]}",
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
                                          color:
                                              Color.fromRGBO(255, 0, 0, 1),
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
                                  color: Colors.white,
                                  size: 30.0,
                                )),
                            onTap: () {
                              //
                            },
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 6.0,
                    ),
                    itemCount: websiteLinks.length,
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
