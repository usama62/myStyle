import 'package:flutter/material.dart';
import 'package:my_style/profile.dart';
import 'entry_option.dart';
import 'package:easy_localization/easy_localization.dart';
import 'home.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFE60D21),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFE60D21),
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 7.5, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        10.0, // Move to bottom 5 Vertically
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
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
                      MaterialPageRoute(
                          // builder: (context) => const EntryOption()
                          builder: (context) => const Profile()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xffffffff),
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
