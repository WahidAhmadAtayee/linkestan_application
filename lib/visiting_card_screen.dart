import 'package:flutter/material.dart';
import 'package:linkestan_application/tabBarPages_VisitingCard/add_visiting_card.dart';
import 'package:linkestan_application/tabBarPages_VisitingCard/show_visiting_card.dart';

class VisitingCard extends StatefulWidget {
  const VisitingCard({super.key});

  @override
  State<VisitingCard> createState() => _VisitingCardState();
}

class _VisitingCardState extends State<VisitingCard>
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
                      bottomLeft: Radius.circular(150),
                    ),
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                  width: double.infinity,
                  height: 200.0,
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
                          "Visiting Card",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 30.0,
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
                        topRight: Radius.circular(140),
                        bottomLeft: Radius.circular(170),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: double.infinity,
                    height: 650.0,
                    child: Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          ShowVisitingCard(),
                          AddVisitingCard(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ), 
          Positioned(
            top: 110.0,
            right: 30.0,
            child: Container(
              width: 290,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.8),
                    child: TabBar(
                      labelStyle: TextStyle(fontSize: 22.0),
                      controller: tabController,
                      labelColor: Color.fromRGBO(255, 255, 255, 1),
                      indicatorColor: Color.fromRGBO(255, 255, 255, 1),
                      indicatorWeight: 2.0,
                      indicator: BoxDecoration(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        borderRadius: BorderRadius.circular(45.0),
                      ),
                      unselectedLabelColor: Color.fromRGBO(255, 0, 0, 1),
                      tabs: [
                        Tab(text: "Show"),
                        Tab(text: "Add"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
