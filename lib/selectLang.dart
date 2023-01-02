import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SelectLang extends StatefulWidget {
  const SelectLang({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectLang> createState() => _SelectLangState();
}

class _SelectLangState extends State<SelectLang> {
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
                    color: const Color(0xffE60D21),
                    width: 1.5,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
