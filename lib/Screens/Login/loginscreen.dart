import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/OTP/otpscreen.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India";
  TextEditingController phoneController = TextEditingController();

  List<String> countries = ["America", "Africa", "Italy", "India", "Gremany"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
              child: UiHelper.CustomText(
                  text: "Enter your phone number",
                  height: 20,
                  color: Color(0Xff00A884),
                  fontweight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomText(
              text: "WhatsApp will need to verify your phone", height: 13),
          UiHelper.CustomText(
              text: "number. Carrier charges may apply.", height: 13),
          UiHelper.CustomText(
              text: " What’s my number?", height: 13, color: Color(0XFF00A884)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 60),
            child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country.toString()),
                    value: country,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                value: selectedCountry,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+91",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)))),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Enter Phone number"),
        backgroundColor: Color(0XFF00A884),
      ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Otpscreen(phonenumber: phonenumber)));
    }
  }
}
