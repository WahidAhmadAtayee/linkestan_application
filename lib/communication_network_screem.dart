import 'package:flutter/material.dart';

class Communication_Network extends StatefulWidget {
  const Communication_Network({super.key});

  @override
  State<Communication_Network> createState() => _Communication_NetworkState();
}

class _Communication_NetworkState extends State<Communication_Network> {
  List name = [
    "Afghan Wireless",
    "Etasalat",
    "Roshan",
    "MTN",
    "Salaam",
  ];
  List pic = [
    "images/Afghan_Wireless_Logo.png",
    "images/Etisalat_Logo.png",
    "images/Roshan_Logo.png",
    "images/MTN_Logo.png",
    "images/Salaam_Logo.png",
  ];
  @override
  Widget build(BuildContext context) {
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
                    top: 10.0,
                    left: 10.0,
                    child: IconButton(
                      onPressed: () {
                        // 
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
                    child: Text(
                      "Communication\nNetwork",
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
                //
                child: ListView.separated(
                  padding: const EdgeInsets.only(
                    top: 150.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                          ),
                        ),
                        color: Color.fromRGBO(255, 0, 0, 1),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(top: 1.5, bottom: 1.5, left: 1.5, right: 10.5,),
                          // work
                          title: Text(
                            "${name[index]}",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 25.0,
                            ),
                          ),
                          leading: Container(
                            width: 85.0,
                            height: 50.0,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            child: Image.asset("${pic[index]}"),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          onTap: () {
                            //
                          },
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 5.0,
                  ),
                  itemCount: name.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
