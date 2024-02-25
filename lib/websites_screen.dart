import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/show_details_websites_screen.dart';

class Websites extends StatefulWidget {
  const Websites({super.key});

  @override
  State<Websites> createState() => _WebsitesState();
}

class _WebsitesState extends State<Websites> {
  @override
  Widget build(BuildContext context) {
    List website_categories_name = [
      translation(context).governmentBT,
      translation(context).programmingBT,
      translation(context).englishBT,
      translation(context).sportBT,
      translation(context).newsBT,
      translation(context).othersBT
    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(280),
                ),
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
              width: double.infinity,
              height: 200,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Positioned(
                    top: 15.0,
                    left: 15.0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    left: 100.0,
                    right: 100.0,
                    child: Text(
                      translation(context).websites,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                    bottomLeft: Radius.circular(170),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                width: double.infinity,
                height: 700,
                child: ListView.separated(
                  padding: const EdgeInsets.only(
                    top: 150.0,
                    left: 30.0,
                    right: 30.0,
                    bottom: 30.0,
                  ),
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(255, 0, 0, 1),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(26.0),
                            bottomRight: Radius.circular(26.0),
                          ),
                        ),
                        child: ListTile(
                          title: Text(
                            "${website_categories_name[index]}",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 0, 0, 1),
                              fontSize: 25.0,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(255, 0, 0, 1),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ShowDetailsWebsites();
                              }),
                            );
                          },
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 5.0),
                  itemCount: website_categories_name.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
