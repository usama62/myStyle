import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  // TextEditingController _forgetPasswordController = TextEditingController();

  var forgotten_pass = '';

  @override
  void initState() {
    // if (storage.getItem("user_data") != null) {
    //   var initialData = storage.getItem('user_data');
    //   forgotten_pass = initialData['password'];
    // }
    // _emailController = TextEditingController();
    // _passwordController = TextEditingController()..text = forgotten_pass;
    // _forgetPasswordController = TextEditingController();
    super.initState();
  }

  _login() async {
    // Map<String, String> body = {
    //   "username": _emailController.text,
    //   "password": _passwordController.text,
    // };

    // http.Response response = await http.post(Global.getLoginUrl(), body: body);
    // return response;
  }

  _getProfile($id) async {
    Map<String, String> body = {
      "id": $id,
    };

    // http.Response response =
    // await http.post(Global.getProfileUrl(), body: body);
    // return response;
  }

  void loginBtnListener() async {
    // try {
    //   if (_emailController.text.isNotEmpty &&
    //       _passwordController.text.isNotEmpty) {
    //     var response = await _login();
    //     var responseBody = jsonDecode(response.body);

    //     if (response.statusCode == 200 && responseBody['login'] == 'true') {
    //       var profile = await _getProfile(responseBody['id']);
    //       var profileresponseBody = jsonDecode(profile.body);
    //       if (response.statusCode == 200) {
    //         storage.setItem("user_data", profileresponseBody);
    //       }
    //       Navigator.push(context,
    //           MaterialPageRoute(builder: (context) => const TabNavigator()));
    //     } else if (!response['status']) {
    //       ScaffoldMessenger.of(context)
    //           .showSnackBar(CustomSnackbar.showSnackbar(response['message']));
    //     }
    //   } else {
    //     if (_passwordController.text.isEmpty) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //           CustomSnackbar.showSnackbar('Please enter valid password!'));
    //     } else {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //           CustomSnackbar.showSnackbar('Please enter valid email address!'));
    //     }
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }

  String password = '';
  bool isPassVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
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
            padding: const EdgeInsets.all(15.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  border: Border.all(
                    color: const Color(0xff36BDA4),
                    width: 1.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                      child: TextField(
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff36BDA4))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff36BDA4))),
                            labelText: 'Email Address',
                            labelStyle: TextStyle(
                                fontFamily: "PoppinsSemiBold",
                                color: Color(0xff373737),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                            prefixIcon: ImageIcon(
                              AssetImage('assets/images/icon_phone.png'),
                            ),
                            suffixStyle: TextStyle(color: Colors.green)),
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff36BDA4))),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff36BDA4))),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                              fontFamily: "PoppinsSemiBold",
                              color: Color(0xff373737),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600),
                          // errorText: "Password is wrong",

                          suffixIcon: IconButton(
                            icon: isPassVisible
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            color: const Color(0xFF373737),
                            onPressed: () => setState(() {
                              isPassVisible = !isPassVisible;
                            }),
                          ),
                        ),
                        obscureText: !isPassVisible,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const ForgotPass()));
                        },
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 12,
                              color: Color(0xffEE8823),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFEE8823),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                          onPressed: () {
                            loginBtnListener();
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
