import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'constants/global.dart';
import 'home.dart';
import 'verification_code.dart';
import 'package:http/http.dart' as http;

enum AlertTypeEnum { email, sms }

class NewPasword extends StatefulWidget {
  const NewPasword({
    Key? key,
  }) : super(key: key);

  @override
  State<NewPasword> createState() => _NewPaswordState();
}

class _NewPaswordState extends State<NewPasword> {
  AlertTypeEnum? _alertTypeEnum;
  final storage = LocalStorage('user_data');
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  HandleSendCode() async {
    var type = "";
    if (_alertTypeEnum == AlertTypeEnum.email) {
      type = "email";
    } else {
      type = "number";
    }

    var response = await _forgetPass(type);

    // print();
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const VerificationCode()),
    // );
  }

  _forgetPass(type) async {
    var data = storage.getItem('user_data');
    print(type);

    Map<String, String> body = {
      "value": data['email'],
      "type": type,
    };

    // var response = await http.post(Global.getForgetPasswordUrl(),
    //     headers: {
    //       'Content-Type': 'application/json',
    //       'Accept': 'application/json',
    //       'Authorization': 'Bearer $token',
    //     },
    //     body: body);
    // return response;
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
                  "New Password",
                  style: TextStyle(
                      fontFamily: "Product Sans",
                      color: Color(0xff000000),
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
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
                            decoration: const InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
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
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding:
                          const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                      backgroundColor: const Color(0xFFE60D21),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                  onPressed: () {
                    // HandleSendCode();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          // builder: (context) => const EntryOption()
                          builder: (context) => const Home()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Confirm",
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
