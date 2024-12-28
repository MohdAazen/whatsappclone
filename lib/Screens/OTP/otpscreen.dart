import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/Profile/profilescreen.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

// ignore: must_be_immutable
class Otpscreen extends StatelessWidget {
  String phonenumber;
  Otpscreen({required this.phonenumber});

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

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
                text: "Verifying your number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "You have tried to register +91 $phonenumber",
                height: 14),
            UiHelper.CustomText(
                text: "recently. Wait before requesting an sms or a call.",
                height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code. ", height: 14),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Otpscreen(phonenumber: phonenumber)));
                    },
                    child: UiHelper.CustomText(
                        text: "Wrong number?",
                        height: 14,
                        color: Color(0XFF00A884)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                UiHelper().CustomContainer(otp1Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper().CustomContainer(otp2Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper().CustomContainer(otp3Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper().CustomContainer(otp4Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper().CustomContainer(otp5Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper().CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "Didn't received code?",
                height: 14,
                color: Color(0XFF00A884)),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profilescreen()));
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
