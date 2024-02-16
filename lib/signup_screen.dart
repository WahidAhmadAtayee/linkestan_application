import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(230),
                      ),
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(255, 0, 0, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200),
                          bottomRight: Radius.circular(270),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      width: double.infinity,
                      height: 650.0,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 170.0,
                          left: 40.0,
                          right: 40.0,
                        ),
                        child: Column(
                          children: [
                            TextField(
                              // controller: ,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: "Full-Name",
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              // controller: ,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: "Phone",
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.phone,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              // controller: ,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: "E-mail",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              // controller: ,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    //
                                  },
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              // controller: ,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: "Repeat Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    //
                                  },
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                              ),
                              cursorColor: Color.fromRGBO(255, 0, 0, 1),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 15.0),
                            ElevatedButton(
                              onPressed: () {
                                //
                              },
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 0, 0, 1),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(350, 40)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("SignIn"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50.0,
            left: 40.0,
            child: Text(
              "SignUp",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 80.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 210.0,
            right: 30.0,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.317),
                  child: Text(
                    "Photo",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Positioned(
                  right: 25.0,
                  bottom: -8.0,
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        barrierColor: Color.fromRGBO(255, 0, 0, 0.3),
                          showDragHandle: true,
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
                          context: context,
                          builder: (builder) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 7.5,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          // 
                                        },
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.image,
                                                size: 70,
                                                color: Color.fromRGBO(255, 0, 0, 1),
                                              ),
                                              Text(
                                                "Gallery",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(255, 0, 0, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          // 
                                        },
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.camera_alt,
                                                size: 70,
                                                color: Color.fromRGBO(255, 0, 0, 1),
                                              ),
                                              Text(
                                                "Camera",
                                                style: TextStyle(
                                                  color: Color.fromRGBO(255, 0, 0, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      color: Color.fromRGBO(255, 0, 0, 1),
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
