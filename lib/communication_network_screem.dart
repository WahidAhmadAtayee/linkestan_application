import 'dart:core';
import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:url_launcher/url_launcher.dart';

List communictionNetworkLinks = [
  "https://afghan-wireless.com/",
  "https://www.etisalat.af/en/",
  "https://roshan.af/home",
  "https://www.mtn.com.af/",
  "https://www.salaam.af/en",
];

class Communication_Network extends StatefulWidget {
  const Communication_Network({super.key});

  @override
  State<Communication_Network> createState() => _Communication_NetworkState();
}

class _Communication_NetworkState extends State<Communication_Network> {
  List pic = [
    "images/Afghan_Wireless_Logo.png",
    "images/Etisalat_Logo.png",
    "images/Roshan_Logo.png",
    "images/MTN_Logo.png",
    "images/Salaam_Logo.png",
  ];

  @override
  Widget build(BuildContext context) {
    List name = [
      translation(context).afghanWirelessBT,
      translation(context).etisalatBT,
      translation(context).roshanBT,
      translation(context).mtnBT,
      translation(context).salaamBT,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          translation(context).communicationNetwork,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 30.0,
            fontFamily: translation(context).changeLanguage == "English"
                ? "WLRoyalFlutterBold"
                : "alvi_Nastaleeq",
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: translation(context).changeLanguage == "English"
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(280),
                      )
                    : BorderRadius.only(
                        bottomRight: Radius.circular(280),
                      ),
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
              width: double.infinity,
              height: 100,
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: translation(context).changeLanguage == "English"
                      ? BorderRadius.only(
                          topRight: Radius.circular(150),
                          bottomLeft: Radius.circular(170),
                        )
                      : BorderRadius.only(
                          topLeft: Radius.circular(150),
                          bottomRight: Radius.circular(170),
                        ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                width: double.infinity,
                height: 700,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120.0, bottom: 60.0),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                      left: 30.0,
                      right: 30.0,
                      bottom: 10.0,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              translation(context).changeLanguage == "English"
                                  ? BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )
                                  : BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    ),
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(1.5),
                          title: Text(
                            "${name[index]}",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 25.0,
                              fontFamily: translation(context).changeLanguage ==
                                      "English"
                                  ? "Times_New_Java"
                                  : "BNaznn",
                            ),
                          ),
                          leading: Container(
                            width: 85.0,
                            height: 50.0,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Image.asset("${pic[index]}"),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          onTap: () async {
                            final Uri _url =
                                Uri.parse(communictionNetworkLinks[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          },
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(height: 10.0),
                    itemCount: name.length,
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
