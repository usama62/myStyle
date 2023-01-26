import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  const Loader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.5),
        body: const Center(
          child: SpinKitFadingCircle(
            size: 140,
            duration: Duration(seconds: 2),
            color: Color(0xFFE60D21),
          ),
        ));
  }
}
