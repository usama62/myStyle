import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

enum AlertTypeEnum { email, sms }

class ForgotPasword extends StatefulWidget {
  const ForgotPasword({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgotPasword> createState() => _ForgotPaswordState();
}

class _ForgotPaswordState extends State<ForgotPasword> {
  AlertTypeEnum? _alertTypeEnum;
  final storage = LocalStorage('user_data');

  handleSendCode() async {
    if (_alertTypeEnum == AlertTypeEnum.email) {
    } else {}
    // print(response);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const VerificationCode()),
    // );
  }

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
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      fontFamily: "Product Sans",
                      color: Color(0xff000000),
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                title: const Text("Via Email",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        fontSize: 17.0,
                        color: Color(0xFF000000))),
                value: AlertTypeEnum.email,
                groupValue: _alertTypeEnum,
                activeColor: const Color(0xFFE60D21),
                onChanged: (value) {
                  setState(() {
                    _alertTypeEnum = value;
                  });
                },
              ),
              // RadioListTile(
              //   title: const Text("Via number",
              //       style: TextStyle(
              //           fontFamily: "Product Sans",
              //           fontWeight: FontWeight.normal,
              //           fontSize: 17.0,
              //           color: Color(0xFF000000))),
              //   value: AlertTypeEnum.sms,
              //   groupValue: _alertTypeEnum,
              //   activeColor: const Color(0xFFE60D21),
              //   onChanged: (value) {
              //     setState(() {
              //       _alertTypeEnum = value;
              //     });
              //   },
              // ),
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
                    handleSendCode();
                  },
                  child: const Center(
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xffffffff),
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
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
