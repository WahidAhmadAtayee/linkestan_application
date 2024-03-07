import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/home_screen.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/login_screen.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  var username;
  var password;

  void _navigator() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 5), () {
      bool? isloggedin = prefs.getBool('isLoggedIn');

      if (isloggedin != true) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return LogInPage();
          },
        ));
      } else {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return HomeScreen(
              isActive: true,
            );
          },
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: translation(context).changeLanguage == "English"
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(255),
                        )
                      : BorderRadius.only(
                          bottomRight: Radius.circular(255),
                        ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                width: double.infinity,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 80.0,
                    right: 60.0,
                    bottom: 30.0,
                  ),
                  child: Image.asset(
                    "images/LinkestanLogo.png",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: translation(context).changeLanguage == "English"
                      ? BorderRadius.only(
                          topRight: Radius.circular(170),
                        )
                      : BorderRadius.only(
                          topLeft: Radius.circular(170),
                        ),
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.0),
                    Center(
                      child: Text(
                        translation(context).splashScreenText,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize:
                              translation(context).changeLanguage == "English"
                                  ? 60.0
                                  : 70.0,
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "WLRoyalFlutterBold"
                                  : "alvi_Nastaleeq",
                        ),
                      ),
                    ),
                    SizedBox(height: 100.0),
                    Text(
                      translation(context).version,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 15,
                        fontFamily:
                            translation(context).changeLanguage == "English"
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
    );
  }
}
