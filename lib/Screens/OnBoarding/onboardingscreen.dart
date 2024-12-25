import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/Login/loginscreen.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(
              height: 40,
            ),
            UiHelper.CustomText(
                text: "Welcome to WhatsApp",
                height: 20,
                fontweight: FontWeight.w400,
                color: Color(0XFF000000)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out ", height: 14),
                UiHelper.CustomText(
                    text: "Privacy Policy. ",
                    height: 14,
                    color: Color(0XFF0C42CC)),
                UiHelper.CustomText(
                    text: "Tap “Agree and continue” ", height: 14),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the ", height: 14),
                UiHelper.CustomText(
                    text: "Teams of Service.",
                    height: 14,
                    color: Color(0XFF0C42CC)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
