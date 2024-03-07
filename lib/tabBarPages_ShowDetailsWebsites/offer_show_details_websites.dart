import 'package:flutter/material.dart';
import 'package:linkestan_application/info/websiteInformation.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class OfferShowDetailsWebsite extends StatefulWidget {
  OfferShowDetailsWebsite({super.key, this.title});
  String? title;
  @override
  State<OfferShowDetailsWebsite> createState() =>
      _OfferShowDetailsWebsiteState();
}

class _OfferShowDetailsWebsiteState extends State<OfferShowDetailsWebsite> {

  @override
  Widget build(BuildContext context) {
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
                      child: WebsiteNames(index)
                    ),
                  ],
                ),
                children: [
                  ListTile(
                      contentPadding: EdgeInsets.all(5.5),
                      title: TextButton(
                        onPressed: () async {
                          if (widget.title ==
                              translation(context).governmentBT) {
                            final Uri _url =
                                Uri.parse(WebInfo().govlink[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          } else if (widget.title ==
                              translation(context).programmingBT) {
                            final Uri _url =
                                Uri.parse(WebInfo().prolink[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          } else if (widget.title ==
                              translation(context).englishBT) {
                            final Uri _url =
                                Uri.parse(WebInfo().englink[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          } else if (widget.title ==
                              translation(context).sportBT) {
                            final Uri _url =
                                Uri.parse(WebInfo().sportlink[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          } else if (widget.title ==
                              translation(context).newsBT) {
                            final Uri _url =
                                Uri.parse(WebInfo().newslink[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          } else {
                            final Uri _url =
                                Uri.parse(WebInfo().otherslink[index]);
                            if (!await launchUrl(_url)) {
                              throw Exception("Could not launch $_url");
                            }
                          }
                        },
                        child: Align(
                          alignment:
                              translation(context).changeLanguage == "English"
                                  ? Alignment.topLeft
                                  : Alignment.topRight,
                          child: WebsiteLinks(index),
                        ),
                      ),
                      subtitle: WebsiteDescriptions(index)),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 5.0,
          ),
          itemCount: WebInfo().govname.length,
        ),
      ),
    );
  }

  // To show website names
  Widget WebsiteNames(int index) {
    if (widget.title == translation(context).governmentBT) {
      return Text(
        WebInfo().govname[index],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).programmingBT) {
      return Text(
        WebInfo().proname[index],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).englishBT) {
      return Text(
        WebInfo().engname[index],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).sportBT) {
      return Text(
        WebInfo().sportname[index],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).newsBT) {
      return Text(
        WebInfo().newsname[index],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else {
      return Text(
        WebInfo().othersname[index],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    }
  }
  // // To show website links
  Widget WebsiteLinks (int index){
     if (widget.title == translation(context).governmentBT) {
      return Text(
        WebInfo().govlink[index],
      );
    } else if (widget.title == translation(context).programmingBT) {
      return Text(
        WebInfo().prolink[index],
      );
    } else if (widget.title == translation(context).englishBT) {
      return Text(
        WebInfo().englink[index],
      );
    } else if (widget.title == translation(context).sportBT) {
      return Text(
        WebInfo().sportlink[index],
      );
    } else if (widget.title == translation(context).newsBT) {
      return Text(
        WebInfo().newslink[index],
      );
    } else {
      return Text(
        WebInfo().otherslink[index],
      );
    }
  }
  // To show website descriptions
  Widget WebsiteDescriptions(int index) {
    if (widget.title == translation(context).governmentBT) {
      return Text(
        "  ${WebInfo().govdes[index]}",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).programmingBT) {
      return Text(
        "  ${WebInfo().prodes[index]}",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).englishBT) {
      return Text(
        "  ${WebInfo().engdes[index]}",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).sportBT) {
      return Text(
        "  ${WebInfo().sportdes[index]}",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else if (widget.title == translation(context).newsBT) {
      return Text(
        "  ${WebInfo().newsdes[index]}",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    } else {
      return Text(
        "  ${WebInfo().othersdes[index]}",
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      );
    }
  }
}
