import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:linkestan_application/signup_screen.dart';

import 'home_screen.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

var username = '';
var password = '';

class _LogInPageState extends State<LogInPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController password_loginController = TextEditingController();

  var isVisible = true;
  var myIcon =
      const Icon(Icons.visibility, color: Color.fromRGBO(255, 0, 0, 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          translation(context).changeLanguage == "English"
                              ? BorderRadius.only(
                                  bottomLeft: Radius.circular(230),
                                )
                              : BorderRadius.only(
                                  bottomRight: Radius.circular(230),
                                ),
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
              ),
              Container(
                color: Color.fromRGBO(255, 0, 0, 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        translation(context).changeLanguage == "English"
                            ? BorderRadius.only(
                                topRight: Radius.circular(200),
                                bottomLeft: Radius.circular(270),
                              )
                            : BorderRadius.only(
                                topLeft: Radius.circular(200),
                                bottomRight: Radius.circular(270),
                              ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  width: double.infinity,
                  height: 650.0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 150.0,
                      left: 40.0,
                      right: 40.0,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: usernameController,
                          onChanged: (usernameValue) {
                            username = usernameValue;
                          },
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
                            labelText: translation(context).usernameLogIn,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                          ),
                          cursorColor: Color.fromRGBO(255, 0, 0, 1),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          controller: password_loginController,
                          obscureText: isVisible,
                          obscuringCharacter: "*",
                          onChanged: (passwordValue) {
                            password = passwordValue;
                          },
                          cursorColor: Color.fromRGBO(255, 0, 0, 1),
                          decoration: InputDecoration(
                            // error: ,
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
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        Align(
                          alignment:
                              translation(context).changeLanguage == "English"
                                  ? Alignment.topLeft
                                  : Alignment.topRight,
                          child: TextButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              translation(context).forgotPasswordLogIn,
                              style: TextStyle(
                                fontFamily:
                                    translation(context).changeLanguage ==
                                            "English"
                                        ? "Times_New_Java"
                                        : "BNaznn",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        ElevatedButton(
                          onPressed: () {
                            if (username == "admin@gmail.com" &&
                                password == "0000") {
                              add(usernameController.text,
                                  password_loginController.text);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return HomeScreen(isActive: true);
                                }),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    iconPadding: EdgeInsets.only(right: 1.0),
                                    icon: Align(
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
                                    title: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.warning_amber_rounded,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                          size: 130.0,
                                        ),
                                        Text(
                                          translation(context)
                                              .pleaseCheckYourUsernameOrPassword,
                                          style: TextStyle(
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                            fontSize: 16.0,
                                            fontFamily: translation(context)
                                                        .changeLanguage ==
                                                    "English"
                                                ? "Times_New_Java"
                                                : "BNaznn",
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          },
                          child: Text(
                            translation(context).logInBT,
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: translation(context).changeLanguage ==
                                      "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(255, 0, 0, 1),
                            ),
                            fixedSize: MaterialStateProperty.all(Size(350, 40)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SignUpPage();
                              }),
                            );
                          },
                          child: Text(
                            translation(context).signUpBT,
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: translation(context).changeLanguage ==
                                      "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(255, 0, 0, 1),
                            ),
                            fixedSize: MaterialStateProperty.all(Size(350, 40)),
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
                              translation(context).signInAsAGuestLogIn,
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return HomeScreen(isActive: false);
                                  }),
                                );
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
            ],
          ),
          Positioned(
            top: 60.0,
            right:
                translation(context).changeLanguage == "English" ? 40.0 : null,
            left: translation(context).changeLanguage == "دری" ||
                    translation(context).changeLanguage == "پښتو"
                ? 40.0
                : null,
            child: Text(
              translation(context).logInText,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
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
        ],
      ),
    );
  }

  add(var username, var pass) async {
    var loginBox = await Hive.openBox("login");
    LogIn login = LogIn(username, pass);
    await loginBox.add(login);
  }
}
