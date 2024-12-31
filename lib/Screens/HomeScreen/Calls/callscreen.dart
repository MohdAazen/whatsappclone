import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class CallScreen extends StatelessWidget {
  var callContent = [
    {
      "name ": "Aron",
      "img":
          "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      "callTime": "15 min ago"
    },
    {
      "name": "Faizan",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ngZsAPeRk33I4ST6KmMM1_Lqh9w5d0_IpQ&s",
      "callTime": "9 min ago"
    },
    {
      "name ": "Aron",
      "img":
          "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      "callTime": "15 min ago"
    },
    {
      "name": "Faizan",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ngZsAPeRk33I4ST6KmMM1_Lqh9w5d0_IpQ&s",
      "callTime": "9 min ago"
    },
    {
      "name ": "Aron",
      "img":
          "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      "callTime": "1 hr ago"
    },
    {
      "name": "Faizan",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ngZsAPeRk33I4ST6KmMM1_Lqh9w5d0_IpQ&s",
      "callTime": "1 day ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(callContent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: callContent[index]["name"].toString(),
                      height: 15,
                      fontweight: FontWeight.bold,
                      color: Color(0xff000000)),
                  subtitle: UiHelper.CustomText(
                      text: callContent[index]["callTime"].toString(),
                      height: 16),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call),
                    color: Color(0xff00A884),
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
