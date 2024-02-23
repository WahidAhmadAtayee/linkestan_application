import 'package:flutter/material.dart';
import 'package:linkestan_application/home_screen.dart';
import 'package:linkestan_application/tabBarPages_ShowDetailsWebsites/offer_show_details_websites.dart';
import 'package:linkestan_application/tabBarPages_ShowDetailsWebsites/others_show_details_website.dart';

class ShowDetailsWebsites extends StatefulWidget {
  const ShowDetailsWebsites({super.key});

  @override
  State<ShowDetailsWebsites> createState() => _ShowDetailsWebsitesState();
}

class _ShowDetailsWebsitesState extends State<ShowDetailsWebsites>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List websiteLinks = [
    "www.google.com",
    "www.youtube.com",
    "www.flutter.dev",
    "www.javatpoint.com",
  ];
  List websiteDescriptions = [
    "Description_1",
    "Description_2",
    "Description_3",
    "Description_4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
                          "Government",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        right: 15.0,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }),
                            );
                          },
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30.0,
                          ),
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
                    child: Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          OfferShowDetailsWebsite(),
                          OthersShowDetailsWebsite(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 210.0,
            right: 30.0,
            left: 30.0,
            child: Padding(
              padding: const EdgeInsets.all(1.8),
              child: TabBar(
                labelStyle: TextStyle(fontSize: 20.0),
                controller: tabController,
                labelColor: Color.fromRGBO(255, 0, 0, 1),
                indicatorColor: Color.fromRGBO(255, 0, 0, 1),
                indicatorWeight: 4.0,
                unselectedLabelColor: Color.fromRGBO(255, 0, 0, 0.43),
                tabs: [
                  Tab(text: "Offer"),
                  Tab(text: "Others"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
