import 'package:flutter/material.dart';

class AddVisitingCard extends StatefulWidget {
  const AddVisitingCard({super.key});

  @override
  State<AddVisitingCard> createState() => _AddVisitingCardState();
}

class _AddVisitingCardState extends State<AddVisitingCard> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 140.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Color.fromRGBO(255, 0, 0, 1),
                            )),
                            child: Center(
                              child: Text(
                                "Photo",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -2.0,
                            bottom: -5.0,
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    barrierColor:
                                        Color.fromRGBO(255, 0, 0, 0.3),
                                    showDragHandle: true,
                                    backgroundColor:
                                        Color.fromRGBO(255, 255, 255, 0.8),
                                    context: context,
                                    builder: (builder) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              7.5,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    //
                                                  },
                                                  child: SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.image,
                                                          size: 70,
                                                          color: Color.fromRGBO(
                                                              255, 0, 0, 1),
                                                        ),
                                                        Text(
                                                          "Gallery",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    //
                                                  },
                                                  child: SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.camera_alt,
                                                          size: 70,
                                                          color: Color.fromRGBO(
                                                              255, 0, 0, 1),
                                                        ),
                                                        Text(
                                                          "Camera",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              icon: Icon(
                                Icons.camera_alt,
                                color: Color.fromRGBO(255, 0, 0, 1),
                                size: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Fornt",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 140.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Color.fromRGBO(255, 0, 0, 1),
                            )),
                            child: Center(
                              child: Text(
                                "Photo",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -2.0,
                            bottom: -5.0,
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    barrierColor:
                                        Color.fromRGBO(255, 0, 0, 0.3),
                                    showDragHandle: true,
                                    backgroundColor:
                                        Color.fromRGBO(255, 255, 255, 0.8),
                                    context: context,
                                    builder: (builder) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              7.5,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    //
                                                  },
                                                  child: SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.image,
                                                          size: 70,
                                                          color: Color.fromRGBO(
                                                              255, 0, 0, 1),
                                                        ),
                                                        Text(
                                                          "Gallery",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () {
                                                    //
                                                  },
                                                  child: SizedBox(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.camera_alt,
                                                          size: 70,
                                                          color: Color.fromRGBO(
                                                              255, 0, 0, 1),
                                                        ),
                                                        Text(
                                                          "Camera",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              icon: Icon(
                                Icons.camera_alt,
                                color: Color.fromRGBO(255, 0, 0, 1),
                                size: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
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
                    Icons.business,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: "Company Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.name,
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
                    Icons.phone_android,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: "Phone",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.phone,
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
                    Icons.email,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: "E-mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
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
                    Icons.map,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: "Address",
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
                    Icons.miscellaneous_services,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  labelText: "Services",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.text,
                maxLines: 3,
                cursorColor: Color.fromRGBO(255, 0, 0, 1),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  //
                },
                child: Text(
                  "Add Visiting Card",
                  style: TextStyle(fontSize: 20),
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
