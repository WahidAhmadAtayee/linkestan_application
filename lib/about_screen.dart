import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          translation(context).aboutTitle,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 30.0,
            fontFamily: translation(context).changeLanguage == "English"
                ? "WLRoyalFlutterBold"
                : "alvi_Nastaleeq",
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        translation(context).changeLanguage == "English"
                            ? BorderRadius.only(
                                bottomRight: Radius.circular(170),
                              )
                            : BorderRadius.only(
                                bottomLeft: Radius.circular(170),
                              ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 150.0,
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      color: Color.fromRGBO(255, 0, 0, 1),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              translation(context).changeLanguage == "English"
                                  ? BorderRadius.only(
                                      topLeft: Radius.circular(265),
                                      bottomRight: Radius.circular(300),
                                    )
                                  : BorderRadius.only(
                                      topRight: Radius.circular(265),
                                      bottomLeft: Radius.circular(300),
                                    ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        width: double.infinity,
                        height: 700.0,
                        child: Center(
                          // Add your information here
                          child: Text(
                            "Information",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                              fontFamily: translation(context).changeLanguage ==
                                      "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40.0,
                      right: translation(context).changeLanguage == "English" ? 20.0 : null,
                      left: translation(context).changeLanguage == "دری" || translation(context).changeLanguage == "پښتو" ? 20.0 : null,
                      child: Text(
                        translation(context).year,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontFamily:
                              translation(context).changeLanguage == "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 20.0,
            left:
                translation(context).changeLanguage == "English" ? 20.0 : null,
            right: translation(context).changeLanguage == "دری" ||
                    translation(context).changeLanguage == "پښتو"
                ? 20.0
                : null,
            child: Container(
              height: 140.0,
              width: 140.0,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                // Add your picture
                child: Image.asset(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
