import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/models/linkestan_models.dart';
import 'package:linkestan_application/tabBarPages_VisitCard/floating_action_bt_visit_card.dart';
import 'package:linkestan_application/tabBarPages_VisitCard/show_my_visit_card_details.dart';

class AddVisitingCard extends StatefulWidget {
  AddVisitingCard({super.key, required this.isButtonActive});
  bool isButtonActive;

  @override
  State<AddVisitingCard> createState() => _AddVisitingCardState();
}

class _AddVisitingCardState extends State<AddVisitingCard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Hive.openBox('visitcard'),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return VisitCardImageDataList();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget VisitCardImageDataList() {
    Box visitcardBox = Hive.box('visitcard');
    return ValueListenableBuilder(
      valueListenable: visitcardBox.listenable(),
      builder: (context, Box box, child) {
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
                      final VisitCard visitCard = box.getAt(index);
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 50.0,
                          right: 50.0,
                          bottom: 5.0,
                        ),
                        child: GestureDetector(
                          child: Center(
                            child: Text(
                              visitCard.visitCardName,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 162, 255, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // child: Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //       width: 210.0,
                          //       height: 200.0,
                          //       decoration: BoxDecoration(
                          //         border: Border.all(
                          //           color: Color.fromRGBO(255, 0, 0, 1),
                          //           width: 1.5,
                          //         ),
                          //         borderRadius: BorderRadius.all(
                          //           Radius.circular(15.0),
                          //         ),
                          //       ),
                          //       child: visitCard.imageFrontVisitCard == null
                          //           ? Image.asset("images/visiting_card.png",
                          //               fit: BoxFit.cover)
                          //           : Image.file(
                          //               File(visitCard.imageFrontVisitCard),
                          //               fit: BoxFit.cover,
                          //             ),
                          //     ),
                          //     Align(
                          //       alignment: Alignment.center,
                          //       child: Text(visitCard.visitCardName),
                          //     ),
                          //   ],
                          // ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShowMyVisitCardDetails(
                                    index: index,
                                    isButtonActive: widget.isButtonActive),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: visitcardBox.length),
              ),
              Align(
                alignment: translation(context).changeLanguage == "English"
                    ? Alignment.bottomRight
                    : Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 20.0),
                  child: FloatingActionButtonVisitCard(
                      isButtonActive: widget.isButtonActive),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
