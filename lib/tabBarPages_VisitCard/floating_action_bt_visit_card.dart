import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:image_picker/image_picker.dart';

class FloatingActionButtonVisitCard extends StatefulWidget {
  FloatingActionButtonVisitCard({super.key, required this.isButtonActive});

  bool isButtonActive;

  @override
  State<FloatingActionButtonVisitCard> createState() =>
      _FloatingActionButtonVisitCardState();
}

class _FloatingActionButtonVisitCardState
    extends State<FloatingActionButtonVisitCard> {
  ImagePicker _imagePicker = ImagePicker();
  XFile? _imageFront;
  XFile? _imageBack;

  TextEditingController companyNameController = TextEditingController();
  TextEditingController phoneNumberCompanyController = TextEditingController();
  TextEditingController emailCompabyController = TextEditingController();
  TextEditingController addressCompanyController = TextEditingController();
  TextEditingController servicesCompanyController = TextEditingController();

  //  To clean the textfields
  var name = "";
  var phone = "";
  var email = "";
  var address = "";
  var service = "";

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
                          SizedBox(height: 20.0),
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
                                          fontFamily: translation(context)
                                                      .changeLanguage ==
                                                  "English"
                                              ? "Times_New_Java"
                                              : "BNaznn",
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
                                                          onTap: () async {
                                                            _imageFront =
                                                                await _imagePicker
                                                                    .pickImage(
                                                                        source:
                                                                            ImageSource.gallery);
                                                            setState(() {});
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
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    fontFamily: translation(context).changeLanguage ==
                                                                            "English"
                                                                        ? "Times_New_Java"
                                                                        : "BNaznn",
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: InkWell(
                                                          onTap: () async {
                                                            _imageFront =
                                                                await _imagePicker
                                                                    .pickImage(
                                                                        source:
                                                                            ImageSource.camera);
                                                            setState(() {});
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
                                                                    fontFamily: translation(context).changeLanguage ==
                                                                            "English"
                                                                        ? "Times_New_Java"
                                                                        : "BNaznn",
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
                                  fontFamily:
                                      translation(context).changeLanguage ==
                                              "English"
                                          ? "Times_New_Java"
                                          : "BNaznn",
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
                                          fontFamily: translation(context)
                                                      .changeLanguage ==
                                                  "English"
                                              ? "Times_New_Java"
                                              : "BNaznn",
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
                                                          onTap: () async {
                                                            _imageBack =
                                                                await _imagePicker
                                                                    .pickImage(
                                                                        source:
                                                                            ImageSource.gallery);
                                                            setState(() {});
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
                                                                  translation(
                                                                          context)
                                                                      .gallery,
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    fontFamily: translation(context).changeLanguage ==
                                                                            "English"
                                                                        ? "Times_New_Java"
                                                                        : "BNaznn",
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: InkWell(
                                                          onTap: () async {
                                                            _imageBack =
                                                                await _imagePicker
                                                                    .pickImage(
                                                                        source:
                                                                            ImageSource.camera);
                                                            setState(() {});
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
                                                                    fontFamily: translation(context).changeLanguage ==
                                                                            "English"
                                                                        ? "Times_New_Java"
                                                                        : "BNaznn",
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
                                  fontFamily:
                                      translation(context).changeLanguage ==
                                              "English"
                                          ? "Times_New_Java"
                                          : "BNaznn",
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
                              onChanged: (value) => name = value,
                              controller: companyNameController,
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
                            SizedBox(height: 25.0),
                            TextField(
                              onChanged: (value) => phone = value,
                              controller: phoneNumberCompanyController,
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
                                labelText:
                                    translation(context).phoneNumberSignUp,
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
                  SizedBox(height: 10.0),
                  TextField(
                    onChanged: (value) => email = value,
                    controller: emailCompabyController,
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
                      labelText: translation(context).emailSignUp,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    onChanged: (value) => address = value,
                    controller: addressCompanyController,
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
                      labelText: translation(context).address,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    cursorColor: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    onChanged: (value) => service = value,
                    controller: servicesCompanyController,
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
                      labelText: translation(context).services,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    maxLines: 3,
                    cursorColor: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: widget.isButtonActive == true
                        ? () {
                            add(
                              _imageFront?.path,
                              _imageBack?.path,
                              companyNameController.text,
                              phoneNumberCompanyController.text,
                              emailCompabyController.text,
                              addressCompanyController.text,
                              servicesCompanyController.text,
                            );
                            Navigator.pop(context);
                            showModalBottomSheet(
                              backgroundColor: Color.fromRGBO(255, 95, 95, 1),
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                  height: 40.0,
                                  child: Center(
                                    child: Text(
                                      "Added!",
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                            setState(() {
                              companyNameController.text = "";
                              phoneNumberCompanyController.text = "";
                              emailCompabyController.text = "";
                              addressCompanyController.text = "";
                              servicesCompanyController.text = "";
                            });
                          }
                        : null,
                    child: Text(
                      translation(context).addNewVisitCardBt,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: widget.isButtonActive == true
                          ? MaterialStatePropertyAll(
                              Color.fromRGBO(255, 0, 0, 1))
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
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      translation(context).cancelBT,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 0, 0, 1)),
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

  add(
      var visitcardImageFront,
      var visitcardImageBack,
      var visitcardName,
      var visitcardPhone,
      var visitcardEmail,
      var visitcardAddress,
      var visitcardServices) async {
    var visitcardBox = await Hive.openBox("visitcard");
    VisitCard visitcard = VisitCard(
        visitcardImageFront,
        visitcardImageBack,
        visitcardName,
        visitcardPhone,
        visitcardEmail,
        visitcardAddress,
        visitcardServices);
    await visitcardBox.add(visitcard);
  }
}
