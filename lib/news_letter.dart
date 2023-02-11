import 'package:flutter/material.dart';
import 'package:my_style/payments.dart';
import 'package:my_style/profile.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/newsletter.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                    border: Border.all(
                      color: const Color(0xFFE60D21),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Image.asset("assets/images/email-icon.png"),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextField(
                            style: const TextStyle(
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Color(0xff000000)),
                            decoration: const InputDecoration(
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            controller: null,
                          ),
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
                      "Subscribe",
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
                "Newsletters",
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
