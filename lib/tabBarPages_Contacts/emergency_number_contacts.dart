import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:url_launcher/url_launcher.dart';

List emergencyNumbers = [
  "102",
  "113",
  "119",
];

class EmergencyNumberContacts extends StatefulWidget {
  const EmergencyNumberContacts({super.key});

  @override
  State<EmergencyNumberContacts> createState() =>
      _EmergencyNumberContactsState();
}

class _EmergencyNumberContactsState extends State<EmergencyNumberContacts> {
  @override
  Widget build(BuildContext context) {
    List emergencyNumbers_name = [
      translation(context).ambulanceText,
      translation(context).fireStationText,
      translation(context).policeText,
    ];
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        right: 30.0,
        left: 30.0,
        bottom: 40.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "${emergencyNumbers_name[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                    subtitle: Text(
                      "  ${emergencyNumbers[index]}",
                      style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily:
                            translation(context).changeLanguage == "English"
                                ? "Times_New_Java"
                                : "BNaznn",
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () async {
                        final Uri dialNumber = Uri(
                          scheme: 'tel',
                          path: emergencyNumbers[index],
                        );
                        if (await canLaunchUrl(dialNumber)) {
                          await FlutterPhoneDirectCaller.callNumber(
                              emergencyNumbers[index]);
                        } else {
                          throw "Could not launch $dialNumber";
                        }
                      },
                      icon: translation(context).changeLanguage == "English"
                          ? Icon(
                              Icons.phone_enabled,
                              color: Color.fromRGBO(0, 255, 0, 1),
                            )
                          : Icon(
                              Icons.phone,
                              color: Color.fromRGBO(0, 255, 0, 1),
                            ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      color: Color.fromRGBO(255, 0, 0, 0.3),
                    ),
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
