import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:linkestan_application/home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

List visitCardNumbers = [
  "+93792838412",
];
List visitCardEmails = [
  "example@gmail.com",
];

// ignore: must_be_immutable
class ShowVisitCardDetails extends StatefulWidget {
  ShowVisitCardDetails({
    super.key,
    required this.index,
    required this.isButtonActive
  });

  int index;
  bool isButtonActive;
  @override
  State<ShowVisitCardDetails> createState() => _ShowVisitCardDetailsState();
}

class _ShowVisitCardDetailsState extends State<ShowVisitCardDetails> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          translation(context).visitCardName,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 30.0,
            fontFamily: translation(context).changeLanguage == "English" ? "WLRoyalFlutterBold" : "alvi_Nastaleeq",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen(isActive: widget.isButtonActive,);
                }),
              );
            },
            icon: Icon(
              Icons.home,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ],
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
                                bottomLeft: Radius.circular(150),
                              )
                            : BorderRadius.only(
                                bottomRight: Radius.circular(150),
                              ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Color.fromRGBO(255, 0, 0, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          translation(context).changeLanguage == "English"
                              ? BorderRadius.only(
                                  topRight: Radius.circular(140),
                                  bottomLeft: Radius.circular(170),
                                )
                              : BorderRadius.only(
                                  topLeft: Radius.circular(140),
                                  bottomRight: Radius.circular(170),
                                ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 650.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 70.0,
                        left: 50.0,
                        right: 50.0,
                        bottom: 40.0,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                initialPage: 0,
                                autoPlay: true,
                                height: 160,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayInterval: const Duration(seconds: 2),
                                enlargeCenterPage: true,
                                aspectRatio: 2.0,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                              ),
                              items: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("images/MTN_Logo.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("images/Salaam_Logo.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AnimatedSmoothIndicator(
                              activeIndex: _currentIndex,
                              count: 2,
                              effect: const SwapEffect(
                                type: SwapType.yRotation,
                                activeDotColor: Colors.blue,
                                dotHeight: 8,
                                dotWidth: 8,
                                spacing: 10,
                                dotColor: Colors.grey,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.business,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                translation(context).nameText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
                                ),
                              ),
                              subtitle: Text(
                                "X company",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.phone_android,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                translation(context).phoneText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
                                ),
                              ),
                              subtitle: Text(
                                "+93792838412",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () async {
                                  final Uri dialNumber = Uri(
                                      scheme: 'tel',
                                      path: visitCardNumbers[widget.index]);
                                  if (await canLaunchUrl(dialNumber)) {
                                    await FlutterPhoneDirectCaller.callNumber(
                                        visitCardNumbers[widget.index]);
                                  } else {
                                    throw "Could not launch $dialNumber";
                                  }
                                },
                                icon: translation(context).changeLanguage == "English" ?
                                 Icon(
                                  Icons.phone_enabled,
                                  color: Color.fromRGBO(0, 255, 0, 1),
                                ) : 
                                Icon(
                                  Icons.phone,
                                  color: Color.fromRGBO(0, 255, 0, 1),
                                )
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                translation(context).emailText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
                                ),
                              ),
                              subtitle: TextButton(
                                onPressed: () async {
                                  String? encodeQueryParameters(
                                      Map<String, String> params) {
                                    return params.entries
                                        .map((MapEntry<String, String> e) =>
                                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                        .join('&');
                                  }

                                  final Uri emailUri = Uri(
                                    scheme: 'mailto',
                                    path: visitCardEmails[widget.index],
                                    query:
                                        encodeQueryParameters(<String, String>{
                                      'subject': 'Enter your subject...',
                                    }),
                                  );
                                  if (await canLaunchUrl(emailUri)) {
                                    launchUrl(emailUri);
                                  } else {
                                    throw Exception(
                                        "Could not launch $emailUri");
                                  }
                                },
                                child: Align(
                                  alignment: translation(context).changeLanguage == "English" ? Alignment.topLeft : Alignment.topRight,
                                  child: Text(
                                    "example@gmail.com",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.map,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                translation(context).addressText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
                                ),
                              ),
                              subtitle: Text(
                                "afjaf;kajf;",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.miscellaneous_services,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              title: Text(
                                translation(context).servicesText,
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: translation(context).changeLanguage == "English" ? "Times_New_Java" : "BNaznn",
                                ),
                              ),
                              subtitle: Text(
                                "dfajf;alkj;la",
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
