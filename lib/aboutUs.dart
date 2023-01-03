import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({
    Key? key,
  }) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Color(0xFF4A4A4A)),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              //replace with our own icon data.
            )),
        body: Container(
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
                  padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 5.0),
                  child: Text(
                    "MyStyle",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xff000000),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 50.0),
                  child: Text(
                      "Beauty app is the ultimate social media app where women have the freedom to express their beauty sharing and uploading photos, videos, posting hair style, makeup style and even their simplicity without makeup BEAUTY alowed you to interact around the world share around the world to posting around the world something that make you feel 'special YOUR NAILHAIR",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "Product Sans",
                          color: Color(0xff383338),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                        backgroundColor: const Color(0xFFE60D21),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Aboutus()),
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Next",
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
        ));
  }
}
