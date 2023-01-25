import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'about_us.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final storage = LocalStorage('user_data');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/doodle.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 50.0),
              child: const Text(
                "lang_selection.heading",
                style: TextStyle(
                    fontFamily: "Product Sans",
                    color: Color(0xff000000),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ).tr(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding:
                        const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                    backgroundColor: const Color(0xFFE60D21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    )),
                onPressed: () {
                  context.locale = const Locale("en", "US");
                  storage.setItem('language', 'english');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Aboutus()),
                  );
                },
                child: Center(
                  child: const Text(
                    "lang_selection.english",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xffffffff),
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal),
                  ).tr(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                    side:
                        const BorderSide(width: 1.0, color: Color(0xFFE60D21)),
                    padding:
                        const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                    // backgroundColor: const Color(0xFFE60D21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    )),
                onPressed: () async {
                  context.locale = const Locale("es", "US");
                  storage.setItem('language', 'spanish');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Aboutus()),
                  );
                },
                child: Center(
                  child: const Text(
                    "lang_selection.spanish",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xffE60D21),
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal),
                  ).tr(),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
