import 'package:flutter/material.dart';
import 'entry_option.dart';
import 'package:easy_localization/easy_localization.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({
    Key? key,
  }) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 5.0),
                  child: const Text(
                    "about_us.heading",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xff000000),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ).tr(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
                  child: const Text("about_us.para1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: "Product Sans",
                              color: Color(0xff383338),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold))
                      .tr(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: const Text("about_us.para2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: "Product Sans",
                              color: Color(0xff383338),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold))
                      .tr(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: const Text("about_us.para3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: "Product Sans",
                              color: Color(0xff383338),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold))
                      .tr(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                            // builder: (context) => const EditProfile()
                            builder: (context) => const EntryOption()),
                      );
                    },
                    child: Row(children: [
                      const Spacer(),
                      const Text(
                        "about_us.btn_text",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xffffffff),
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal),
                      ).tr(),
                      const Spacer(),
                    ]),
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
