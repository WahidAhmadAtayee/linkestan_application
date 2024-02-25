import 'package:flutter/material.dart';
import 'package:linkestan_application/tabBarPages_VisitCard/show_visit_card_details.dart';

class OfferVisitingCardImages extends StatefulWidget {
  const OfferVisitingCardImages({super.key});

  @override
  State<OfferVisitingCardImages> createState() => _OfferVisitingCardImagesState();
}

class _OfferVisitingCardImagesState extends State<OfferVisitingCardImages> {
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
        top: 35.0,
        bottom: 45.0,
      ),
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
                            ShowVisitCardDetails(index: index),
                      ));
                },
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: _firstImageList.length),
    );
  }
}
