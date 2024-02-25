import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';

class FloatingActionButtonVisitCard extends StatefulWidget {
  const FloatingActionButtonVisitCard({super.key});

  @override
  State<FloatingActionButtonVisitCard> createState() =>
      _FloatingActionButtonVisitCardState();
}

class _FloatingActionButtonVisitCardState
    extends State<FloatingActionButtonVisitCard> {
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
              title: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    )),
                                    child: Center(
                                      child: Text(
                                        translation(context).photoAdd,
                                        style: TextStyle(
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -10.0,
                                    bottom: -10.0,
                                    child: IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                            barrierColor:
                                                Color.fromRGBO(255, 0, 0, 0.3),
                                            showDragHandle: true,
                                            backgroundColor: Color.fromRGBO(
                                                255, 255, 255, 0.8),
                                            context: context,
                                            builder: (builder) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
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
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            1)),
                                                                Text(
                                                                  translation(
                                                                          context)
                                                                      .gallery,
                                                                  style: TextStyle(
                                                                      color: Color
                                                                          .fromRGBO(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              1)),
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
                                                                  Icons
                                                                      .camera_alt,
                                                                  size: 70,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                ),
                                                                Text(
                                                                  translation(
                                                                          context)
                                                                      .camera,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
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
                                        Icons.add_a_photo,
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                translation(context).frontText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    )),
                                    child: Center(
                                      child: Text(
                                        translation(context).photoAdd,
                                        style: TextStyle(
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -10.0,
                                    bottom: -10.0,
                                    child: IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                            barrierColor:
                                                Color.fromRGBO(255, 0, 0, 0.3),
                                            showDragHandle: true,
                                            backgroundColor: Color.fromRGBO(
                                                255, 255, 255, 0.8),
                                            context: context,
                                            builder: (builder) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
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
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                ),
                                                                Text(
                                                                  translation(context).gallery,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
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
                                                                  Icons
                                                                      .camera_alt,
                                                                  size: 70,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                ),
                                                                Text(
                                                                  translation(context).camera,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
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
                                        Icons.add_a_photo,
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                translation(context).backText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  Icons.business,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                labelText: translation(context).companyName,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              keyboardType: TextInputType.name,
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            SizedBox(
                              height: 25.0
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
                                labelText: translation(context).phoneText,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0
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
                      labelText: translation(context).emailText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  SizedBox(
                    height: 10.0
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
                      labelText: translation(context).addressText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    cursorColor: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  SizedBox(
                    height: 10.0
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
                      labelText: translation(context).servicesText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    maxLines: 3,
                    cursorColor: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  SizedBox(
                    height: 15.0
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //
                    },
                    child: Text(
                      translation(context).addNewVisitCardBt,
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 17, 0, 1)),
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
                  SizedBox(
                    height: 10.0
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      translation(context).cancelBT,
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 17, 0, 1)),
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
            );
          },
        );
      },
      child: Icon(Icons.add),
    );
  }
}
