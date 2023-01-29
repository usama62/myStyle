import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                    child: Text("MyStyle",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xff000000),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      color: Color(0xFFFCDFE2),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: Text("Free Trial : 22 days left",
                          style: TextStyle(
                              fontFamily: "Product Sans",
                              color: Color(0xffE60D21),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Image.asset("assets/images/messages.png"),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/jennifer.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Jennifier",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/jennifer.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Jennifier",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/jennifer.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Jennifier",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/jennifer.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Jennifier",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/jennifer.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Jennifier",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/jennifer.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Jennifier",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/profilesmall.png"),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text("Jennifier with Laura",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("Texas. New York . U.S.A",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 10.0,
                                fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
                      child: Image.asset("assets/images/menu-icon.png")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Image.asset("assets/images/PostImage.png"),
            ),
          ],
        ),
      ),
    );
  }
}
