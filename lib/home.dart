import 'package:flutter/material.dart';
import 'entry_option.dart';
import 'package:easy_localization/easy_localization.dart';

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
      child: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/doodle.png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png'),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 5.0),
                  child: Text(
                    "This is Home Page",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xff000000),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            //replace with our own icon data.
          ),
        ),
      ]),
    ));
  }
}
