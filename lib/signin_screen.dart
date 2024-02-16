import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(230),
                      ),
                      color: Color.fromRGBO(255, 0, 0, 1),
                    ),
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
              ),
              Container(
                color: Color.fromRGBO(255, 0, 0, 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(200),
                      bottomLeft: Radius.circular(270),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  width: double.infinity,
                  height: 650.0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 150.0,
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
                            labelText: "Username",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color.fromRGBO(255, 0, 0, 1),
                            ),
                          ),
                          cursorColor: Color.fromRGBO(255, 0, 0, 1),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          // controller: ,
                          cursorColor: Color.fromRGBO(255, 0, 0, 1),
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
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(255, 0, 0, 1),
                            ),
                            fixedSize: MaterialStateProperty.all(Size(350, 40)),
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
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(255, 0, 0, 1),
                            ),
                            fixedSize: MaterialStateProperty.all(Size(350, 40)),
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
                              "Sign In as a guest?",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("click here!"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 60.0,
            right: 40.0,
            child: Text(
              "SIGNIN",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 80.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
