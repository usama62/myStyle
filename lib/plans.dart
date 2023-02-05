import 'package:flutter/material.dart';
import 'package:my_style/payments.dart';
import 'package:my_style/profile.dart';

class Plans extends StatefulWidget {
  const Plans({
    Key? key,
  }) : super(key: key);

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFE60D21),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFE60D21),
                        blurRadius: 15.0,
                        spreadRadius: 7.5,
                        offset: Offset(
                          0.0,
                          10.0,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "22",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xffffffff),
                            fontSize: 61.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Days left on your ",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xffffffff),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "free trial",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xffffffff),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 50, 25, 10),
                child: Text(
                  "Upgrade Your Plan",
                  style: TextStyle(
                      fontFamily: "Product Sans",
                      color: Color(0xFFE60D21),
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    border: Border.all(
                      color: const Color(0xFF808080),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 15, 0, 5),
                            child: Text(
                              "Free trial",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xFFE60D21),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 15),
                            child: Text(
                              "15 days free trial with limited features",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xFF000000),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.radio_button_unchecked,
                              color: Color(0xFF808080),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: const Color(0xFFE60D21),
                    border: Border.all(
                      color: const Color(0xFFE60D21),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 15, 0, 5),
                            child: Text(
                              "Monthly Subscription",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 15),
                            child: Text(
                              "Billed monthly at00.00 after ater the 1st month",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.check_circle,
                              color: Color(0xFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding:
                          const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                      backgroundColor: const Color(0xFFE60D21),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Payments()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Upgrade",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xFFFFFFFF),
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                //replace with our own icon data.
              ),
              const Text(
                "Plans",
                style: TextStyle(
                    fontFamily: "Product Sans",
                    color: Color(0xFF000000),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
