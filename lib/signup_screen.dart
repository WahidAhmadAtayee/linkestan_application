import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkestan_application/home_screen.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _imagePicker = ImagePicker();
  XFile? _image;

  TextEditingController full_nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeat_passwordController = TextEditingController();

  var isVisible = true;
  var isVisible2 = true;
  var myIcon =
      const Icon(Icons.visibility, color: Color.fromRGBO(255, 0, 0, 1));
  var myIcon2 =
      const Icon(Icons.visibility, color: Color.fromRGBO(255, 0, 0, 1));

  // var full_name = '';
  // var email_address = '';
  // var password = '';
  // var repeatPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          translation(context).changeLanguage == "English"
                              ? BorderRadius.only(
                                  bottomRight: Radius.circular(230),
                                )
                              : BorderRadius.only(
                                  bottomLeft: Radius.circular(230),
                                ),
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(255, 0, 0, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            translation(context).changeLanguage == "English"
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(200),
                                    bottomRight: Radius.circular(270),
                                  )
                                : BorderRadius.only(
                                    topRight: Radius.circular(200),
                                    bottomLeft: Radius.circular(270),
                                  ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      width: double.infinity,
                      height: 650.0,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 170.0,
                          left: 40.0,
                          right: 40.0,
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: full_nameController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: translation(context).full_NameSignUp,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText:
                                    translation(context).phoneNumberSignUp,
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.phone,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: translation(context).emailSignUp,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              controller: passwordController,
                              obscureText: isVisible,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: translation(context).password,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isVisible) {
                                        isVisible = false;
                                        myIcon = Icon(
                                          Icons.visibility_off,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        );
                                      } else {
                                        isVisible = true;
                                        myIcon = Icon(
                                          Icons.visibility,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        );
                                      }
                                    });
                                  },
                                  icon: myIcon,
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              controller: repeat_passwordController,
                              obscureText: isVisible2,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: translation(context).rePassword,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isVisible2) {
                                        isVisible2 = false;
                                        myIcon2 = Icon(
                                          Icons.visibility_off,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        );
                                      } else {
                                        isVisible2 = true;
                                        myIcon2 = Icon(
                                          Icons.visibility,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        );
                                      }
                                    });
                                  },
                                  icon: myIcon2,
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 15.0),
                            ElevatedButton(
                              onPressed: () async {
                                final SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                if (full_nameController.text.isNotEmpty &&
                                    phoneController.text.isNotEmpty &&
                                    emailController.text.isNotEmpty &&
                                    passwordController.text.isNotEmpty &&
                                    repeat_passwordController.text.isNotEmpty) {
                                  if (repeat_passwordController.text ==
                                      passwordController.text) {
                                    add(
                                      _image!.path,
                                      full_nameController.text,
                                      phoneController.text,
                                      emailController.text,
                                      passwordController.text,
                                      emailController.text,
                                    );

                                    await prefs.setBool('isLoggedIn', true);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return HomeScreen(isActive: true);
                                      }),
                                    );
                                  } else {
                                    showModalBottomSheet(
                                      backgroundColor:
                                          Color.fromRGBO(255, 95, 95, 1),
                                      context: context,
                                      builder: (context) {
                                        return SizedBox(
                                          height: 40.0,
                                          child: Center(
                                            child: Text(
                                              "Check the password!",
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
                                } else {
                                  showModalBottomSheet(
                                    backgroundColor:
                                        Color.fromRGBO(255, 95, 95, 1),
                                    context: context,
                                    builder: (context) {
                                      return SizedBox(
                                        height: 40.0,
                                        child: Center(
                                          child: Text(
                                            "Fill in all the textFields!",
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
                                translation(context).createAccountBT,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily:
                                      translation(context).changeLanguage ==
                                              "English"
                                          ? "Times_New_Java"
                                          : "BNaznn",
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 0, 0, 1),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(350, 40)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  translation(context).alreadyHaveAnAccountText,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                    fontFamily:
                                        translation(context).changeLanguage ==
                                                "English"
                                            ? "Times_New_Java"
                                            : "BNaznn",
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    translation(context).clickHereBT,
                                    style: TextStyle(
                                      fontFamily:
                                          translation(context).changeLanguage ==
                                                  "English"
                                              ? "Times_New_Java"
                                              : "BNaznn",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50.0,
            right: translation(context).changeLanguage == "دری" ||
                    translation(context).changeLanguage == "پښتو"
                ? 40.0
                : null,
            left:
                translation(context).changeLanguage == "English" ? 40.0 : null,
            child: Text(
              translation(context).signUpText,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                // fontSize: 80.0,
                fontSize: translation(context).changeLanguage == "English" ||
                        translation(context).changeLanguage == "پښتو"
                    ? 80.0
                    : 90.0,
                fontFamily: translation(context).changeLanguage == "English"
                    ? "WLRoyalFlutterBold"
                    : "alvi_Nastaleeq",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 210.0,
            left: translation(context).changeLanguage == "دری" ||
                    translation(context).changeLanguage == "پښتو"
                ? 30.0
                : null,
            right:
                translation(context).changeLanguage == "English" ? 30.0 : null,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.317),
                  child: _image != null
                      ? Image.file(
                          File(_image!.path),
                          fit: BoxFit.cover,
                        )
                      : Text(
                          translation(context).photoAdd,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 30.0,
                            fontFamily:
                                translation(context).changeLanguage == "English"
                                    ? "Times_New_Java"
                                    : "BNaznn",
                          ),
                        ),
                ),

                Positioned(
                  right: 25.0,
                  bottom: -5.0,
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        barrierColor: Color.fromRGBO(255, 0, 0, 0.3),
                        showDragHandle: true,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
                        context: context,
                        builder: (builder) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 7.5,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () async {
                                        _image = await _imagePicker.pickImage(
                                            source: ImageSource.gallery);
                                        setState(() {});
                                      },
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.image,
                                              size: 70,
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            Text(
                                              translation(context).gallery,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                                fontFamily: translation(context)
                                                            .changeLanguage ==
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
                                      onTap: () {
                                        //
                                      },
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.camera_alt,
                                              size: 70,
                                              color:
                                                  Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                            Text(
                                              translation(context).camera,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 0, 0, 1),
                                                fontFamily: translation(context)
                                                            .changeLanguage ==
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
                        },
                      );
                    },
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Color.fromRGBO(255, 0, 0, 1),
                      size: 30.0,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  add(
    var photoSignup,
    var fullName_signup,
    var phone_signup,
    var email_signup,
    var password_signup,
    var username,
  ) async {
    var signUpBox = await Hive.openBox("users");
    Users users = Users(
      photoSignup,
      fullName_signup,
      phone_signup,
      email_signup,
      password_signup,
      username,
    );
    await signUpBox.add(users);
  }
}
