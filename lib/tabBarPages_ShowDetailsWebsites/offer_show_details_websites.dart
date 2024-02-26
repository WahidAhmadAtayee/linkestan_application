import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class OfferShowDetailsWebsite extends StatefulWidget {
  const OfferShowDetailsWebsite({super.key});

  @override
  State<OfferShowDetailsWebsite> createState() =>
      _OfferShowDetailsWebsiteState();
}

class _OfferShowDetailsWebsiteState extends State<OfferShowDetailsWebsite> {
  List websiteNames = [
    "Dart",
    "W3school",
    "Flutter",
    "JavaTpoint",
  ];
  List websiteLinks = [
    "www.dart.dev",
    "www.w3school.org",
    "www.flutter.dev",
    "www.javatpoint.com",
  ];

  @override
  Widget build(BuildContext context) {
    List websiteDescriptions = [
      "${translation(context).descriptionText} dart",
      "${translation(context).descriptionText} w3school",
      "${translation(context).descriptionText} flutter",
      "${translation(context).descriptionText} javatpoint",
    ];
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        right: 60.0,
        left: 60.0,
        bottom: 40.0,
      ),
      child: Expanded(
        child: ListView.separated(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          itemBuilder: (context, index) {
            return Container(
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
                        ' ${websiteNames[index]} ',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(5.5),
                    title: TextButton(
                      onPressed: () async {
                        final Uri _url = Uri.parse(websiteLinks[index]);
                        if (!await launchUrl(_url)) {
                          throw Exception("Could not launch $_url");
                        }
                      },
                      child: Align(
                        alignment: translation(context).changeLanguage == "English" ? Alignment.topLeft : Alignment.topRight,
                        child: Text(
                          "${websiteLinks[index]}",
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "  ${websiteDescriptions[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 5.0,
          ),
          itemCount: websiteNames.length,
        ),
      ),
    );
  }
}
