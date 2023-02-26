import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import 'constants/global.dart';
import 'custom/custom_snackbar.dart';

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

  _getCode(access_token, user_data, type) async {
    var value = "";
    if (type == "email") {
      value = user_data["email"];
    } else {
      value = "0 $user_data['mobile_no']";
    }
    Map<String, String> body = {
      "value": value,
      "type": type,
    };

    var response = await http.post(Global.getForgetPasswordUrl(),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $access_token'
        },
        body: body);

    return response;
  }

  handleSendCode() async {
    var accessToken;
    var userData;
    var type;

    if (storage.getItem("access_token") != null) {
      accessToken = storage.getItem('access_token');
    }
    if (storage.getItem("user_data") != null) {
      userData = storage.getItem('user_data');
    }
    if (_alertTypeEnum == AlertTypeEnum.email) {
      type = "email";
    } else {
      type = "Number";
    }
    var response = await _getCode(accessToken, userData["data"], type);
    var responseBody = jsonDecode(response.body);

    if (responseBody["status"] == "success") {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text('Success', textAlign: TextAlign.center),
                content: const Text(
                  'A new Password has been sent to your registered Email/Number.',
                  textAlign: TextAlign.center,
                ),
                actions: <Widget>[
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding:
                              const EdgeInsets.fromLTRB(50, 14.0, 50, 14.0),
                          backgroundColor: const Color(0xFFE60D21),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text(
                        'OK',
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xffffffff),
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ));
    }
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                child: const Text(
                  "forgetPass.heading",
                  style: TextStyle(
                      fontFamily: "Product Sans",
                      color: Color(0xff000000),
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ).tr(),
              ),
              RadioListTile(
                title: const Text("forgetPass.email",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            fontWeight: FontWeight.normal,
                            fontSize: 17.0,
                            color: Color(0xFF000000)))
                    .tr(),
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
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  child: Center(
                    child: const Text(
                      "forgetPass.btn_text",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xffffffff),
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal),
                    ).tr(),
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
