import 'package:flutter/material.dart';
import 'package:my_style/splash.dart';
import 'aboutUs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PoppinsSemiBold',
        primaryColor: const Color(0xFFE60D21),
      ),
      // home: const MyHomePage(title: ''),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final storage = LocalStorage('user_data');

  @override
  void initState() {
    super.initState();
    // var data = storage.getItem('user_data');
    // if (data != null) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => const Categories()));
    // }
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
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 50.0),
              child: Text(
                "Select Language",
                style: TextStyle(
                    fontFamily: "Product Sans",
                    color: Color(0xff000000),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Aboutus()),
                  );
                },
                child: const Center(
                  child: Text(
                    "English",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xffffffff),
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                    side:
                        const BorderSide(width: 3.0, color: Color(0xFFE60D21)),
                    padding:
                        const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                    // backgroundColor: const Color(0xFFE60D21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Aboutus()),
                  );
                },
                child: const Center(
                  child: Text(
                    "Spanish",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xffE60D21),
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
