import 'package:flutter/material.dart';
import 'package:my_style/splash.dart';

import 'Login.dart';
import 'selectLang.dart';

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
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/landing_img.png'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 100.0),
                child: Text(
                  "We Believe We can Change the world together…",
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xff38385E),
                      fontWeight: FontWeight.w600,
                      fontFamily: "PoppinsSemiBold"),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 70.0),
                child: Text(
                  "We care about every small details to sastisfy your needs when you use our service",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff78789D),
                      fontWeight: FontWeight.w400,
                      fontFamily: "PoppinsSemiBold"),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset('assets/images/Pavigation.png'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                child: Text(
                  "Welcome, let’s get started!!!!!",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff373737),
                      fontWeight: FontWeight.w600,
                      fontFamily: "PoppinsSemiBold"),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 30,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            const EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
                        backgroundColor: const Color(0xFFdddddd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectLang()),
                      );
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFEE8823),
                          fontWeight: FontWeight.w600,
                          fontFamily: "PoppinsSemiBold"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            const EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
                        backgroundColor: const Color(0xFF36BDA4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Signup()));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "PoppinsSemiBold",
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
