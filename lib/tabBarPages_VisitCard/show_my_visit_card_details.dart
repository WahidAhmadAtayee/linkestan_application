import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:linkestan_application/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

List myVisitCardNumbers = [
  "+93792838412",
];

List myVisitCardEmails = [
  "example@gmail.com",
];
// ignore: must_be_immutable
class ShowMyVisitCardDetails extends StatefulWidget {
  ShowMyVisitCardDetails({
    super.key,
    required this.index,
  });
  int index;
  @override
  State<ShowMyVisitCardDetails> createState() => _ShowMyVisitCardDetailsState();
}

class _ShowMyVisitCardDetailsState extends State<ShowMyVisitCardDetails> {
  int _currentIndex = 0;

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
                            Navigator.pop(context);
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
                          "MyVisitCard Name",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 30.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        right: 15.0,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }),
                            );
                          },
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30.0,
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
                        topRight: Radius.circular(140),
                        bottomLeft: Radius.circular(170),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 650.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        left: 50.0,
                        right: 50.0,
                        bottom: 40.0,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                initialPage: 0,
                                autoPlay: true,
                                height: 160,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayInterval: const Duration(seconds: 2),
                                enlargeCenterPage: true,
                                aspectRatio: 2.0,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                              ),
                              items: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("images/MTN_Logo.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("images/Salaam_Logo.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AnimatedSmoothIndicator(
                              activeIndex: _currentIndex,
                              count: 2,
                              effect: const SwapEffect(
                                type: SwapType.yRotation,
                                activeDotColor: Colors.blue,
                                dotHeight: 8,
                                dotWidth: 8,
                                spacing: 10,
                                dotColor: Colors.grey,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                            ListTile(
                              leading: IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        iconPadding:
                                            EdgeInsets.only(right: 1.0),
                                        title: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 25.0,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            Container(
                                                              width: 80.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        1),
                                                              )),
                                                              child: Center(
                                                                child: Text(
                                                                  "Photo",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    fontSize:
                                                                        15.0,
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
                                                                          Color.fromRGBO(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0.3),
                                                                      showDragHandle:
                                                                          true,
                                                                      backgroundColor: Color.fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          0.8),
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (builder) {
                                                                        return Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              10.0),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                MediaQuery.of(context).size.height / 7.5,
                                                                            child:
                                                                                Row(
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
                                                                                            color: Color.fromRGBO(255, 0, 0, 1),
                                                                                          ),
                                                                                          Text(
                                                                                            "Gallery",
                                                                                            style: TextStyle(
                                                                                              color: Color.fromRGBO(255, 0, 0, 1),
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
                                                                                            color: Color.fromRGBO(255, 0, 0, 1),
                                                                                          ),
                                                                                          Text(
                                                                                            "Camera",
                                                                                            style: TextStyle(
                                                                                              color: Color.fromRGBO(255, 0, 0, 1),
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
                                                                  Icons
                                                                      .add_a_photo,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "Fornt",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
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
                                                              decoration:
                                                                  BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        1),
                                                              )),
                                                              child: Center(
                                                                child: Text(
                                                                  "Photo",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    fontSize:
                                                                        15.0,
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
                                                                          Color.fromRGBO(
                                                                              255,
                                                                              0,
                                                                              0,
                                                                              0.3),
                                                                      showDragHandle:
                                                                          true,
                                                                      backgroundColor: Color.fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          0.8),
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (builder) {
                                                                        return Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              10.0),
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            height:
                                                                                MediaQuery.of(context).size.height / 7.5,
                                                                            child:
                                                                                Row(
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
                                                                                            color: Color.fromRGBO(255, 0, 0, 1),
                                                                                          ),
                                                                                          Text(
                                                                                            "Gallery",
                                                                                            style: TextStyle(
                                                                                              color: Color.fromRGBO(255, 0, 0, 1),
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
                                                                                            color: Color.fromRGBO(255, 0, 0, 1),
                                                                                          ),
                                                                                          Text(
                                                                                            "Camera",
                                                                                            style: TextStyle(
                                                                                              color: Color.fromRGBO(255, 0, 0, 1),
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
                                                                  Icons
                                                                      .add_a_photo,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "Back",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
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
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      TextField(
                                                        // controller: ,
                                                        decoration:
                                                            InputDecoration(
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color
                                                                  .fromRGBO(255,
                                                                      0, 0, 1),
                                                            ),
                                                          ),
                                                          prefixIcon: Icon(
                                                            Icons.business,
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
                                                          ),
                                                          labelText:
                                                              "Company Name",
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                        ),
                                                        keyboardType:
                                                            TextInputType.name,
                                                        cursorColor:
                                                            Color.fromRGBO(
                                                                255, 0, 0, 1),
                                                      ),
                                                      SizedBox(
                                                        height: 20.0,
                                                      ),
                                                      TextField(
                                                        // controller: ,
                                                        decoration:
                                                            InputDecoration(
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color
                                                                  .fromRGBO(255,
                                                                      0, 0, 1),
                                                            ),
                                                          ),
                                                          prefixIcon: Icon(
                                                            Icons.phone_android,
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    1),
                                                          ),
                                                          labelText: "Phone",
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                        ),
                                                        keyboardType:
                                                            TextInputType.phone,
                                                        cursorColor:
                                                            Color.fromRGBO(
                                                                255, 0, 0, 1),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10.0),
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
                                                  Icons.email,
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                ),
                                                labelText: "E-mail",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              cursorColor:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            SizedBox(height: 10.0),
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
                                                  Icons.map,
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                ),
                                                labelText: "Address",
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
                                                  Icons.miscellaneous_services,
                                                  color: Color.fromRGBO(
                                                      255, 0, 0, 1),
                                                ),
                                                labelText: "Services",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              keyboardType: TextInputType.text,
                                              maxLines: 3,
                                              cursorColor:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            SizedBox(height: 15.0),
                                            ElevatedButton(
                                              onPressed: () {
                                                //
                                              },
                                              child: Text(
                                                "Change",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Color.fromRGBO(
                                                            255, 17, 0, 1)),
                                                fixedSize:
                                                    MaterialStateProperty.all(
                                                  Size(330, 45),
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
                                            SizedBox(height: 10.0),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Color.fromRGBO(
                                                            255, 17, 0, 1)),
                                                fixedSize:
                                                    MaterialStateProperty.all(
                                                  Size(330, 45),
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
                                icon: Icon(Icons.edit),
                                color: Color.fromRGBO(255, 0, 0, 1),
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
                                          size: 140.0,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                        title: Text(
                                          "Do you want to delete?",
                                          style: TextStyle(
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        content: Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  //
                                                },
                                                child: Text(
                                                  "Yes",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Color.fromRGBO(
                                                              255, 0, 0, 1)),
                                                  fixedSize:
                                                      MaterialStateProperty.all(
                                                    Size(80, 20),
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
                                              SizedBox(width: 10.0),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "No",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Color.fromRGBO(
                                                              255, 0, 0, 1)),
                                                  fixedSize:
                                                      MaterialStateProperty.all(
                                                    Size(80, 20),
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
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.delete),
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.business,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                "Name:",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              subtitle: Text(
                                "X company",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.phone_android,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                "Phone:",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              subtitle: Text(
                                "+93792838412",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () async {
                                  final Uri dialNumber = Uri(
                                      scheme: 'tel',
                                      path: myVisitCardNumbers[widget.index]);
                                  if (await canLaunchUrl(dialNumber)) {
                                    await FlutterPhoneDirectCaller.callNumber(
                                        myVisitCardNumbers[widget.index]);
                                  } else {
                                    throw "Could not launch $dialNumber";
                                  }
                                },
                                icon: Icon(
                                  Icons.call,
                                  color: Color.fromRGBO(0, 255, 0, 1),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                "E-mail:",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              subtitle: TextButton(
                                onPressed: () async {
                                String? encodeQueryParameters(Map<String, String> params){
                                  return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
                                } 
                                  final Uri emailUri = Uri(
                                    scheme: 'mailto',
                                    path: myVisitCardEmails[widget.index],
                                    query: encodeQueryParameters(<String, String>{
                                      'subject': 'Enter your subject...',
                                    }),
                                  );
                                  if (await canLaunchUrl(emailUri)){
                                    launchUrl(emailUri);
                                  }else{
                                    throw Exception("Could not launch $emailUri");
                                  }
                                },
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    myVisitCardEmails[widget.index],
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.map,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                "Address:",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              subtitle: Text(
                                "afjaf;kajf;",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.miscellaneous_services,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                "Services:",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              subtitle: Text(
                                "dfajf;alkj;la",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}