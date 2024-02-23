import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OthersShowDetailsWebsite extends StatefulWidget {
  const OthersShowDetailsWebsite({super.key});

  @override
  State<OthersShowDetailsWebsite> createState() =>
      _OthersShowDetailsWebsiteState();
}

class _OthersShowDetailsWebsiteState extends State<OthersShowDetailsWebsite> {
  List websiteNames = [
    "Google",
    "Youtube",
    "Flutter",
    "JavaTpoint",
  ];
  List myWebsiteLinks = [
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
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        right: 50.0,
        left: 50.0,
        bottom: 40.0,
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              itemBuilder: (context, index) {
                return Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.only(right: 15.0, left: 10.0),
                      title: Row(
                        children: [
                          Icon(Icons.web),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              '${websiteNames[index]}',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(1.5),
                          title: TextButton(
                            onPressed: () async {
                              final Uri _url = Uri.parse(myWebsiteLinks[index]);
                              if (!await launchUrl(_url)) {
                                throw Exception("Could not launch $_url");
                              }
                            },
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "${myWebsiteLinks[index]}",
                              ),
                            ),
                          ),
                          subtitle: Text(
                            "  ${websiteDescriptions[index]}",
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
                                          icon: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.close,
                                                    size: 20.0,
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
                                                height: 15.0,
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
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          255, 0, 0, 1),
                                                    ),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.web,
                                                    color: Color.fromRGBO(
                                                        255, 17, 0, 1),
                                                  ),
                                                  labelText: "Website Name",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                keyboardType:
                                                    TextInputType.text,
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
                                                        BorderRadius.circular(
                                                            10.0),
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
                                                  labelText: "URL",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                keyboardType: TextInputType.url,
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
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                      color: Color.fromRGBO(
                                                          255, 0, 0, 1),
                                                    ),
                                                  ),
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
                                                cursorColor: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                                maxLength: 150,
                                                maxLines: 2,
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Change",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                    Color.fromRGBO(
                                                        255, 17, 0, 1),
                                                  ),
                                                  fixedSize:
                                                      MaterialStateProperty.all(
                                                    Size(260, 35),
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
                              SizedBox(
                                height: 10.0,
                              ),
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
                                            size: 150.0,
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                          ),
                                          title: Text(
                                            "Do you want to delete?",
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
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
                                                    "Yes",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Color.fromRGBO(
                                                                255, 0, 0, 1)),
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
                                                                .circular(30.0),
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
                                                    "No",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Color.fromRGBO(
                                                                255, 0, 0, 1)),
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
                                                                .circular(30.0),
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
                        ),
                      ],
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
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
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
                                Icons.web,
                                color: Color.fromRGBO(255, 17, 0, 1),
                              ),
                              labelText: "Website Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.text,
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
                                Icons.link,
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
                              "Add Website",
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 17, 0, 1)),
                              fixedSize: MaterialStateProperty.all(
                                Size(260, 40),
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
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
