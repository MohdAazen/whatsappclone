import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsappclone/Screens/HomeScreen/homescreen.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
                text: "Profile Info",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 40,
            ),
            UiHelper.CustomText(
                text: "Please provide your name and an optional ", height: 14),
            UiHelper.CustomText(text: "profile photo", height: 14),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedImage == null
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: Color(0XFFD9D9D9),
                      child: Image.asset(
                        "assets/images/camera1.png",
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedImage!),
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/happyface1.png")
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homescreen()));
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) {
        return;
      }
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(ex.toString()),
        backgroundColor: Color(0XFF05AA82),
      ));
    }
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.camera);
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          size: 80,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.camera,
                          size: 80,
                          color: Colors.grey,
                        ),
                      ),
                    ])
              ],
            ),
          );
        });
  }
}
