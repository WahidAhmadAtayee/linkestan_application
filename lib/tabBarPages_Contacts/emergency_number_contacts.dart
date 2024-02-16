import 'package:flutter/material.dart';

class EmergencyNumberContacts extends StatefulWidget {
  const EmergencyNumberContacts({super.key});

  @override
  State<EmergencyNumberContacts> createState() =>
      _EmergencyNumberContactsState();
}

class _EmergencyNumberContactsState extends State<EmergencyNumberContacts> {
  List emergencyNumbers_name = [
    "Ambulance",
    "Fire Station",
    "Police",
  ];
  List emergencyNumbers = [
    "102",
    "113",
    "119",
  ];
  @override
  Widget build(BuildContext context) {
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
                      "${emergencyNumbers_name[index]}:",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "  ${emergencyNumbers[index]}",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        //
                      },
                      icon: Icon(
                        Icons.call,
                        color: Color.fromRGBO(0, 255, 17, 1),
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
