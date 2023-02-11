import 'package:flutter/material.dart';
import 'news_letter.dart';

class AddCard extends StatefulWidget {
  const AddCard({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final TextEditingController _usernameController = TextEditingController();
  bool isChecked = true;

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              Column(
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
                          padding: const EdgeInsets.fromLTRB(
                              131.5, 14.0, 131.5, 14.0),
                          backgroundColor: const Color(0xFFE60D21),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsLetter()),
                        );
                      },
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
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                child: Row(
                  children: [
                    Column(
                      children: [Image.asset("assets/images/visa_large.png")],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Visa Card",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xFF000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            "Debit Card     ****2345",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xFF6D6B6B),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        child: Image.asset("assets/images/add_card.png"),
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
                              hintText: 'Enter Card Number',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: _usernameController,
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
                        child: Image.asset("assets/images/enter-name.png"),
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
                              hintText: 'Card Holder',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: _usernameController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
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
                                child:
                                    Image.asset("assets/images/calender.png"),
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: TextField(
                                    style: const TextStyle(
                                        fontFamily: "Product Sans",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                        color: Color(0xff000000)),
                                    decoration: const InputDecoration(
                                      hintText: 'Valid Upto',
                                      hintStyle: TextStyle(
                                          fontFamily: "Product Sans",
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17.0,
                                          color: Color(0xff000000)),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    controller: _usernameController,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
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
                                child: Image.asset("assets/images/cvv.png"),
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: TextField(
                                    style: const TextStyle(
                                        fontFamily: "Product Sans",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                        color: Color(0xff000000)),
                                    decoration: const InputDecoration(
                                      hintText: 'Security Code',
                                      hintStyle: TextStyle(
                                          fontFamily: "Product Sans",
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17.0,
                                          color: Color(0xff000000)),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    controller: _usernameController,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: const Color(0xFFE60D21),
                      value: isChecked,
                      shape: const CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      "Auto pay monthly",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xFF808080),
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
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
                    _settingModalBottomSheet(context);
                  },
                  child: const Center(
                    child: Text(
                      "Confirm",
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
              ),
              const Text(
                "Payments",
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
