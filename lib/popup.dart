import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 0, 0),
            child: Image.asset("assets/images/add_card_large.png"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
            child: Text(
              "Success",
              style: TextStyle(
                  fontFamily: "Product Sans",
                  color: Color(0xFF000000),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
            child: Text(
              "Your card has been added successfully",
              style: TextStyle(
                  fontFamily: "Product Sans",
                  color: Color(0xFF000000),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 40),
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                  backgroundColor: const Color(0xFFE60D21),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Okay",
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
    );
  }
}
