import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'register_via_email.dart';
import 'package:easy_localization/easy_localization.dart';

class Register extends StatefulWidget {
  const Register({
    Key? key,
  }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
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
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 5.0),
                child: const Text(
                  "register.heading",
                  style: TextStyle(
                      fontFamily: "Product Sans",
                      color: Color(0xff000000),
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ).tr(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      side: const BorderSide(
                          width: 1.0, color: Color(0xFFE60D21)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterViaEmail()),
                    );
                  },
                  child: Row(children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                      child: Image.asset("assets/images/email-icon.png"),
                    ),
                    const Text(
                      "register.email",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xff000000),
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal),
                    ).tr(),
                    const Spacer(),
                  ]),
                ),
              ),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //         side: const BorderSide(
              //             width: 1.0, color: Color(0xFFE60D21)),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(25.0),
              //         )),
              //     onPressed: () {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(builder: (context) => const Aboutus()),
              //       // );
              //     },
              //      child: Row(children: [
              //      const Spacer(),
              //       Padding(
              //         padding: const EdgeInsets.fromLTRB(80, 5, 10, 5),
              //         child: Image.asset("assets/images/mobile.png"),
              //       ),
              //       const Text(
              //         "register.number",
              //         style: TextStyle(
              //             fontFamily: "Product Sans",
              //             color: Color(0xff000000),
              //             fontSize: 17.0,
              //             fontWeight: FontWeight.normal),
              //       ).tr(),
              // const Spacer(),
              //     ]),
              //   ),
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                      side: const BorderSide(
                          width: 1.0, color: Color(0xFFE60D21)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                  onPressed: () async {
                    //Facebook Auth
                    FacebookAuth auth = FacebookAuth.instance;
                    auth.logOut();
                    auth.login(permissions: [
                      "email",
                      "public_profile",
                      "user_friends"
                    ]).then((value) async {
                      if (await auth.accessToken != null) {
                        FacebookAuth.instance.getUserData().then((userData) {
                          setState(() {});
                        });
                      } else {}
                    });
                  },
                  child: Row(children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                      child: Image.asset("assets/images/facebook.png"),
                    ),
                    const Text(
                      "register.fb",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xff000000),
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
        ),
      ),
    ]));
  }
}
