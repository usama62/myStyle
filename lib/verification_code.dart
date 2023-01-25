import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({
    Key? key,
  }) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

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
                const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                  child: Text(
                    "Enter Verification Code",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xff000000),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: SizedBox(
                    width: width,
                    child: Pinput(
                      length: 6,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: PinTheme(
                        height: 60.0,
                        width: 60.0,
                        textStyle: const TextStyle(
                          fontSize: 24.0,
                          color: Color(0xffE60D21),
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xffE60D21),
                            width: 1.0,
                          ),
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        height: 60.0,
                        width: 60.0,
                        textStyle: const TextStyle(
                          fontFamily: "Product Sans",
                          fontSize: 24.0,
                          color: Color(0xffE60D21),
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffE60D21),
                          border: Border.all(
                            color: const Color(0xffE60D21),
                            width: 1.0,
                          ),
                        ),
                      ),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Aboutus()),
                      // );
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
      ]),
    ));
  }
}
