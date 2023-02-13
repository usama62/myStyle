import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:localstorage/localstorage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_style/profile.dart';
import 'constants/global.dart';
import 'custom/custom_snackbar.dart';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _jobTitleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  String profileImage = "";
  var remoteUser;

  final ImagePicker _picker = ImagePicker();
  final storage = LocalStorage('user_data');

  @override
  void initState() {
    var userData = storage.getItem('user_data');
    super.initState();
  }

  Future _saveProfile() async {
    var userData = storage.getItem('user_data');
    String img64 = base64Encode(File(profileImage).readAsBytesSync());
    String remote = '';
    if (isSwitched) {
      remote = "true";
    } else {
      remote = "false";
    }

    Map<String, String> body = {
      "id": userData['user_id'],
      "remote": remote,
      "jobTitle": _jobTitleController.text,
      "description": _descriptionController.text,
      "image": img64,
    };

    http.Response response =
        await http.post(Global.getUpdateProfileUrl(), body: body);
    return response;
  }

  void profileBtnListener() async {
    try {
      if (_jobTitleController.text.isNotEmpty &&
          _descriptionController.text.isNotEmpty) {
        var response = await _saveProfile();
        var responseBody = jsonDecode(response.body);

        if (response.statusCode == 200) {
          storage.setItem("user_data", responseBody);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Profile()));
        } else if (!response['status']) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackbar.showSnackbar(response['message']));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            CustomSnackbar.showSnackbar('Please fill all fields!'));
      }
    } catch (e) {
      print(e);
    }
  }

  bool isSwitched = true;

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
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Stack(alignment: Alignment.bottomCenter, children: [
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
                    "Plans",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        color: Color(0xFF000000),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 30,
                child: GestureDetector(
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
                    )))),
          ]),
        ));
  }
}
