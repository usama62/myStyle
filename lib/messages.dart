import 'package:flutter/material.dart';
import 'package:my_style/payments.dart';

class Message extends StatefulWidget {
  const Message({
    Key? key,
  }) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/Laura.png"),
                          ),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Julian Dasilva\n',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: "Product Sans",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Hi Julian! See you after work?',
                                style: TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "Product Sans",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
              ),
              const Text(
                "Messages",
                style: TextStyle(
                    fontFamily: "Product Sans",
                    color: Color(0xFF000000),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Image.asset("assets/images/search.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Image.asset("assets/images/filter.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Image.asset("assets/images/messages.png"),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
