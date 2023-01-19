import 'package:localstorage/localstorage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _jobTitleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  final storage = LocalStorage('user_data');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          // toolbarHeight: 100,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: const Color(0xFF36BDA4),
          title: const Text('This is Home'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Positioned(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFF36BDA4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 100.0, 25.0, 10.0),
                          child: Text(
                            "Job Title",
                            style: TextStyle(
                                fontFamily: "PoppinsSemiBold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F1F39)),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF36BDA4), width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF36BDA4), width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            controller: _jobTitleController,
                          )),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                fontFamily: "PoppinsSemiBold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F1F39)),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF36BDA4), width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF36BDA4), width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            controller: _descriptionController,
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 0.0),
                        child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFF36BDA4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                            onPressed: () {},
                            child: const Text(
                              'Save',
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
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
