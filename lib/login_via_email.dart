import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:my_style/utils/helpers/validation_helper.dart';
import 'constants/global.dart';
import 'custom/custom_snackbar.dart';
import 'forgot_pass.dart';
import 'package:http/http.dart' as http;
import 'home.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginViaEmail extends StatefulWidget {
  const LoginViaEmail({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginViaEmail> createState() => _LoginViaEmailState();
}

class _LoginViaEmailState extends State<LoginViaEmail> {
  final storage = LocalStorage('user_data');
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();
    super.initState();
  }

  _signin() async {
    Map<String, String> body = {
      "email": _emailController.text,
      "password": _passController.text,
    };

    var response = await http.post(Global.getLoginUrl(),
        headers: Global.getCustomizedHeader(), body: body);
    return response;
  }

  void signinBtnListener() async {
    String emailValidationMsg =
        ValidationHelper.validateEmail(_emailController.text);
    bool passValidationMsg =
        ValidationHelper.validatePassword(_passController.text);
    try {
      if (_emailController.text.isNotEmpty &&
          _passController.text.isNotEmpty &&
          emailValidationMsg == "success") {
        var response = await _signin();
        var responseBody = jsonDecode(response.body);

        if (responseBody['status'] == "success") {
          ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackbar.showSnackbar("Logged IN Successfully!"));
          storage.setItem('access_token', responseBody['access_token']);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        } else {
          if (_emailController.text.isEmpty ||
              emailValidationMsg != "success") {
            ScaffoldMessenger.of(context).showSnackBar(
                CustomSnackbar.showSnackbar(
                    'Please enter valid email address!'));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                CustomSnackbar.showSnackbar('Please enter valid password!'));
          }
        }
      }
    } catch (e) {
      print(e);
    }
  }

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
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                  child: const Text(
                    "loginviaemail.heading",
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
                          child: Image.asset("assets/images/email-icon.png"),
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
                              decoration: InputDecoration(
                                hintText: 'loginviaemail.email'.tr(),
                                hintStyle: const TextStyle(
                                    fontFamily: "Product Sans",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.0,
                                    color: Color(0xff000000)),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
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
                          child: Image.asset("assets/images/password.png"),
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
                              decoration: InputDecoration(
                                hintText: 'loginviaemail.pass'.tr(),
                                hintStyle: const TextStyle(
                                    fontFamily: "Product Sans",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.0,
                                    color: Color(0xff000000)),
                                border: InputBorder.none,
                              ),
                              obscureText: true,
                              controller: _passController,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                  child: GestureDetector(
                    child: const Text("loginviaemail.forgotpass",
                        style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        )).tr(),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPasword()));
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                        backgroundColor: const Color(0xFFE60D21),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                    onPressed: () {
                      signinBtnListener();
                    },
                    child: Center(
                      child: const Text(
                        "loginviaemail.btn_text",
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
      ]),
    ));
  }
}
