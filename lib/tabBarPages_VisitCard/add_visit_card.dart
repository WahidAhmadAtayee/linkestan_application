import 'package:flutter/material.dart';
import 'package:linkestan_application/tabBarPages_VisitCard/floating_action_bt_visit_card.dart';
import 'package:linkestan_application/tabBarPages_VisitCard/show_my_visit_card_details.dart';

class AddVisitingCard extends StatefulWidget {
  AddVisitingCard({super.key});

  @override
  State<AddVisitingCard> createState() => _AddVisitingCardState();
}

class _AddVisitingCardState extends State<AddVisitingCard> {
  List _firstImageList = [
    "images/MTN_Logo.png",
    "images/Salaam_Logo.png",
    "images/MTN_Logo.png",
    "images/Salaam_Logo.png",
    "images/MTN_Logo.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0,
        bottom: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      left: 50.0,
                      right: 50.0,
                      bottom: 5.0,
                    ),
                    child: GestureDetector(
                      child: Container(
                        width: 210.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(255, 0, 0, 1),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              _firstImageList[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ShowMyVisitCardDetails(index: index),
                          ),
                        );
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(),
                itemCount: _firstImageList.length),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 20.0),
              child: FloatingActionButtonVisitCard(),
            ),
          ),
        ],
      ),
    );
  }
}
