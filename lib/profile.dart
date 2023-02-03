import 'package:flutter/material.dart';
import 'package:my_style/home.dart';

List _images = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/5.png',
  'assets/images/6.png',
  'assets/images/7.png',
  'assets/images/8.png',
  'assets/images/9.png',
];

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000, // Some height
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                      child: Text("Pete Sagan",
                          style: TextStyle(
                              fontFamily: "Product Sans",
                              color: Color(0xff000000),
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Image.asset("assets/images/filter.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Image.asset("assets/images/messages.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Image.asset("assets/images/profileLarge.png"),
                    ),
                    const Spacer(),
                    Column(
                      children: const [
                        Text("41",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold)),
                        Text("Posts",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 13.0,
                                fontWeight: FontWeight.normal))
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: const [
                        Text("391",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold)),
                        Text("Friends",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 13.0,
                                fontWeight: FontWeight.normal))
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: const [
                        Text("3961",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold)),
                        Text("Likes",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xff000000),
                                fontSize: 13.0,
                                fontWeight: FontWeight.normal))
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: Text("Pete Sagan",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xff000000),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: Text("One line description, probably with an emoji.",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xff000000),
                        fontSize: 10.0,
                        fontWeight: FontWeight.normal)),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextButton(
                      style: TextButton.styleFrom(
                          // padding: const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                          backgroundColor: const Color(0xFFE60D21),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              // builder: (context) => const EntryOption()
                              builder: (context) => const Profile()),
                        );
                      },
                      child: const Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              fontFamily: "Product Sans",
                              color: Color(0xffffffff),
                              fontSize: 17.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            // padding: const EdgeInsets.fromLTRB(131.5, 14.0, 131.5, 14.0),
                            backgroundColor: const Color(0xFFFBDEE1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                // builder: (context) => const EntryOption()
                                builder: (context) => const Home()),
                          );
                        },
                        child: const Center(
                          child: Text(
                            "Book Services",
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                color: Color(0xFFE60D21),
                                fontSize: 17.0,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset("assets/images/jennifer.png"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text("Jennifier",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold)),
                          )
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset("assets/images/Laura.png"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text("Laura",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold)),
                          )
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset("assets/images/Alexander.png"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text("Alexander",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold)),
                          )
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset("assets/images/Raoxam.png"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text("Raoxam",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold)),
                          )
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset("assets/images/shahsha.png"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text("shahsha",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold)),
                          )
                        ])),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset("assets/images/shahsha.png"),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text("shahsha",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold)),
                          )
                        ]))
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: const AssetImage("assets/images/gallery.png"),
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image: const AssetImage("assets/images/video.png"),
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Ink.image(
                          image:
                              const AssetImage("assets/images/unlimited.png"),
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: GridView.builder(
                  itemCount: _images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(_images[index]);
                  },
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
