import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_style/payments.dart';

List<String> list = <String>['Gender', 'Male', 'Female'];

class EditProfile extends StatefulWidget {
  const EditProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ImagePicker _picker = ImagePicker();
  String dropdownValue = list.first;
  String profileImage = "";

  Future<void> _displayPickImageDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Select option to pick image'),
            content: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    XFile? image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      if (image != null) {
                        profileImage = image.path;
                      }
                    });
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFEE8823),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Pick image from Gallery",
                              style: TextStyle(
                                  fontFamily: "PoppinsSemiBold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF))),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () async {
                    final XFile? photo =
                        await _picker.pickImage(source: ImageSource.camera);
                    setState(() {
                      if (photo != null) {
                        profileImage = photo.path;
                      }
                    });
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFEE8823),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Capture Image",
                              style: TextStyle(
                                  fontFamily: "PoppinsSemiBold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF))),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () async {
                    _displayPickImageDialog();
                  },
                  child: Center(
                      child: Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: profileImage.isEmpty
                              ? const AssetImage("assets/images/avatar.png")
                              : Image.file(
                                  File(profileImage),
                                  width: 70,
                                  height: 70,
                                ).image,
                          fit: BoxFit.fill),
                    ),
                  ))),
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
                    children: const [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Color(0xff000000)),
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: null,
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
                    children: const [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Color(0xff000000)),
                            decoration: InputDecoration(
                              hintText: 'Last Name',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
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
                            children: const [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: TextField(
                                    style: TextStyle(
                                        fontFamily: "Product Sans",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                        color: Color(0xff000000)),
                                    decoration: InputDecoration(
                                      hintText: 'Age',
                                      hintStyle: TextStyle(
                                          fontFamily: "Product Sans",
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17.0,
                                          color: Color(0xff000000)),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.number,
                                    controller: null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
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
                              Flexible(
                                child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                    child: DropdownButton(
                                      value: dropdownValue,
                                      elevation: 16,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      onChanged: (String? value) {
                                        setState(() {
                                          dropdownValue = value!;
                                        });
                                      },
                                      items: list.map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value,
                                              style: const TextStyle(
                                                  fontFamily: "Product Sans",
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 17.0,
                                                  color: Color(0xff000000))),
                                        );
                                      }).toList(),
                                    )),
                              ),
                            ],
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
                    children: const [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Color(0xff000000)),
                            decoration: InputDecoration(
                              hintText: 'Phone',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.number,
                            controller: null,
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
                    children: const [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Color(0xff000000)),
                            decoration: InputDecoration(
                              hintText: 'Place of Birth',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: null,
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
                    children: const [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Color(0xff000000)),
                            decoration: InputDecoration(
                              hintText: 'Age',
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0,
                                  color: Color(0xff000000)),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            controller: null,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Payments()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Save",
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                //replace with our own icon data.
              ),
              const Text(
                "Edit Profile",
                style: TextStyle(
                    fontFamily: "Product Sans",
                    color: Color(0xFF000000),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
