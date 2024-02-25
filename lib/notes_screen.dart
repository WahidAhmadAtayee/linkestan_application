import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/tabBarPages_Notes/add_notes.dart';
import 'package:linkestan_application/tabBarPages_Notes/show_notes.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> with SingleTickerProviderStateMixin {
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
                          translation(context).notes,
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
                          ShowNotes(),
                          AddNotes(),
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
              child: Padding(
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
                    Tab(text: translation(context).show),
                    Tab(text: translation(context).addNewNoteBT),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
