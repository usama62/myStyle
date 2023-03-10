import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:localstorage/localstorage.dart';
import 'package:my_style/profile.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index = 0;
  final storage = LocalStorage('user_data');

  @override
  void initState() {
    if (storage.getItem("user_data") != null) {
      var initialData = storage.getItem('user_data');
    }
    super.initState();
  }

  _navigateToScreens(index) {
    // print(index);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Profile()),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 40, 0, 0),
                    child: Image.asset("assets/images/add_card_large.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                    child: Text(
                      "Success",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xFF000000),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                    child: Text(
                      "Your card has been added successfully",
                      style: TextStyle(
                          fontFamily: "Product Sans",
                          color: Color(0xFF000000),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 40),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(
                              131.5, 14.0, 131.5, 14.0),
                          backgroundColor: const Color(0xFFE60D21),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                      onPressed: () {},
                      child: const Center(
                        child: Text(
                          "Okay",
                          style: TextStyle(
                              fontFamily: "Product Sans",
                              color: Color(0xFFFFFFFF),
                              fontSize: 17.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                    child: Text("MyStyle",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            color: Color(0xff000000),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      color: Color(0xFFFCDFE2),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: Text("Free Trial : 22 days left",
                          style: TextStyle(
                              fontFamily: "Product Sans",
                              color: Color(0xffE60D21),
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Image.asset("assets/images/messages.png"),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Image.asset("assets/images/photos.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Photos",
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
                        Image.asset("assets/images/videos.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Videos",
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
                        Image.asset("assets/images/Male.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Male",
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
                        Image.asset("assets/images/Female.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Female",
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
                        Image.asset("assets/images/Hair.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Hair",
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
                        Image.asset("assets/images/Nails.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Nails",
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
                        Image.asset("assets/images/MakeUp.png"),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text("Make Up",
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/profilesmall.png"),
                      Column(
                        children: const [
                          Text("Jennifier with Laura",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text("Texas. New York . U.S.A",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
                          child: Image.asset("assets/images/menu-icon.png")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: InstaLikeButton(
                    image: const AssetImage("assets/images/PostImage.png"),
                    onChanged: () {
                      // Do something...
                    },
                    icon: Icons.favorite,
                    iconSize: 80,
                    iconColor: const Color(0xffE60D21),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: MediaQuery.of(context).size.width - 20,
                    duration: const Duration(seconds: 1),
                    onImageError: (e, _) {
                      // Do something...
                    },
                    imageAlignment: Alignment.center,
                    imageBoxfit: BoxFit.fill,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("165",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Icon(Icons.favorite_border),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Image.asset("assets/images/comment.png"),
                        ),
                        Image.asset("assets/images/share.png"),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              _settingModalBottomSheet(context);
                            },
                            child: Image.asset("assets/images/report.png")),
                      ],
                    )),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: "Liked by ",
                          ),
                          TextSpan(
                            text: 'Alexender ',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(
                            text: 'and others',
                            style: TextStyle(
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                //Comments
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 11,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'Alexender: ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: 'Nice ????',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/profilesmall2.png"),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("Roxsan with Jennifier",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text("Texas. New York . U.S.A",
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    color: Color(0xff000000),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
                          child: Image.asset("assets/images/menu-icon.png")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: InstaLikeButton(
                    image: const AssetImage("assets/images/PostImage2.png"),
                    onChanged: () {
                      // Do something...
                    },
                    icon: Icons.favorite,
                    iconSize: 80,
                    iconColor: const Color(0xffE60D21),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: MediaQuery.of(context).size.width - 20,
                    duration: const Duration(seconds: 1),
                    onImageError: (e, _) {
                      // Do something...
                    },
                    imageAlignment: Alignment.center,
                    imageBoxfit: BoxFit.fill,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("165",
                              style: TextStyle(
                                  fontFamily: "Product Sans",
                                  color: Color(0xff000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Icon(Icons.favorite_border),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Image.asset("assets/images/comment.png"),
                        ),
                        Image.asset("assets/images/share.png"),
                      ],
                    )),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: "Liked by ",
                          ),
                          TextSpan(
                            text: 'Alexender ',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(
                            text: 'and others',
                            style: TextStyle(
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                //Comments
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 11,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'Alexender: ',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: 'Nice ????',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
              _navigateToScreens(index);
            },
            selectedItemColor: const Color(0xFFE60D21),
            unselectedItemColor: const Color(0xFF000000),
            backgroundColor: const Color(0xFFFFFFFF),
            iconSize: 20,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.photo_camera), label: "Camera"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "Category"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
