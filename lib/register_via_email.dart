import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:localstorage/localstorage.dart';
import 'constants/global.dart';
import 'custom/custom_snackbar.dart';
import 'package:http/http.dart' as http;
import 'package:easy_localization/easy_localization.dart';
import 'home.dart';

class RegisterViaEmail extends StatefulWidget {
  const RegisterViaEmail({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterViaEmail> createState() => _RegisterViaEmailState();
}

class _RegisterViaEmailState extends State<RegisterViaEmail> {
  final storage = LocalStorage('user_data');
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNoController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmpassController = TextEditingController();

  @override
  void initState() {
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneNoController = TextEditingController();
    _passController = TextEditingController();
    _confirmpassController = TextEditingController();
    super.initState();
  }

  _signup() async {
    Map<String, String> body = {
      "email": _emailController.text,
      "password": _passController.text,
      "name": _usernameController.text,
      "mobile_no": _phoneNoController.text,
    };

    var response = await http.post(Global.getRegisterUrl(),
        headers: Global.getCustomizedHeader(), body: body);
    return response;
  }

  _getUserData(token) async {
    var response = await http.post(Global.getUserDataUrl(), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    return response;
  }

  void signupBtnListener() async {
    try {
      if (_emailController.text.isNotEmpty &&
          _phoneNoController.text.isNotEmpty &&
          _passController.text.isNotEmpty &&
          _usernameController.text.isNotEmpty) {
        if (_passController.text == _confirmpassController.text) {
          var response = await _signup();
          var responseBody = jsonDecode(response.body);
          if (responseBody['status'] == "success") {
            storage.setItem("access_token", responseBody['access_token']);
            ScaffoldMessenger.of(context).showSnackBar(
                CustomSnackbar.showSnackbar(responseBody['message']));
            var userData = await _getUserData(responseBody['access_token']);
            var userDataBody = jsonDecode(userData.body);
            storage.setItem("user_data", userDataBody);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                CustomSnackbar.showSnackbar(responseBody['login']));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackbar.showSnackbar("Password doesn't match!"));
        }
      } else {
        if (_usernameController.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackbar.showSnackbar('Please enter valid username!'));
        } else if (_passController.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackbar.showSnackbar('Please enter valid password!'));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              CustomSnackbar.showSnackbar('Please enter valid email address!'));
        }
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context)
          .showSnackBar(CustomSnackbar.showSnackbar(e.toString()));
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
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                  child: const Text(
                    "registerviaemail.heading",
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
                              decoration: InputDecoration(
                                hintText: 'registerviaemail.name'.tr(),
                                hintStyle: const TextStyle(
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
                                hintText: 'registerviaemail.email'.tr(),
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
                          child: Image.asset("assets/images/mobile.png"),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: IntlPhoneField(
                              style: const TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              decoration: InputDecoration(
                                hintText: 'registerviaemail.phone'.tr(),
                                hintStyle: const TextStyle(
                                    fontFamily: "Product Sans",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.0,
                                    color: Color(0xff000000)),
                                border: InputBorder.none,
                                counterText: "",
                              ),
                              keyboardType: TextInputType.number,
                              controller: _phoneNoController,
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              onCountryChanged: (country) {
                                print('Country changed to: ' + country.name);
                              },
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
                                hintText: 'registerviaemail.pass'.tr(),
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
                          child:
                              Image.asset("assets/images/confrm-password.png"),
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
                                hintText: 'registerviaemail.cpass'.tr(),
                                hintStyle: const TextStyle(
                                    fontFamily: "Product Sans",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17.0,
                                    color: Color(0xff000000)),
                                border: InputBorder.none,
                              ),
                              obscureText: true,
                              controller: _confirmpassController,
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
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                        backgroundColor: const Color(0xFFE60D21),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                    onPressed: () {
                      signupBtnListener();
                    },
                    child: const Center(
                      child: Text(
                        "Register",
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
      ]),
    ));
  }
}
