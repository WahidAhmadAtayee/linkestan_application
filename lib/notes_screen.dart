import 'package:flutter/material.dart';
import 'package:linkestan_application/languageClasses/language_constants.dart';
import 'package:linkestan_application/tabBarPages_Notes/add_notes.dart';
import 'package:linkestan_application/tabBarPages_Notes/show_notes.dart';

class Notes extends StatefulWidget {
   Notes({super.key, required this.isButtonActive});
  bool isButtonActive;
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
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 0, 0, 1),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          translation(context).notes,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 30.0,
            fontFamily: translation(context).changeLanguage == "English"
                ? "WLRoyalFlutterBold"
                : "alvi_Nastaleeq",
          ),
        ),
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
                  height: 150.0,
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
                    child: Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          ShowNotes(),
                          AddNotes(isButtonActive: widget.isButtonActive),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 60.0,
            left: translation(context).changeLanguage == "دری" ||
                    translation(context).changeLanguage == "پښتو"
                ? 30.0
                : null,
            right:
                translation(context).changeLanguage == "English" ? 30.0 : null,
            child: Container(
              width: 290,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.8),
                child: TabBar(
                  labelStyle: TextStyle(
                    fontSize: 22.0,
                    fontFamily: translation(context).changeLanguage == "English"
                        ? "Times_New_Java"
                        : "BNaznn",
                  ),
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
                    Tab(text: translation(context).mineBT),
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
