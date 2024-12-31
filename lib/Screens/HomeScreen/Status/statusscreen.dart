import 'package:flutter/material.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      "name": "Micheal",
      "statTime": "15 min ago"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_ngZsAPeRk33I4ST6KmMM1_Lqh9w5d0_IpQ&s",
      "name": "Frank",
      "statTime": "25 min ago"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStX_80nNHMbjfqg_RLFVvmfb4s7t4K7RH5tw&s",
      "name": "Priya",
      "statTime": "45 min ago"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvi7HpQ-_PMSMOFrj1hwjp6LDcI-jm3Ro0Xw&s",
      "name": "Rupa",
      "statTime": "5 min ago"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyzTWQoCUbRNdiyorem5Qp1zYYhpliR9q0Bw&s",
      "name": "Raiqa",
      "statTime": "35 min ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(text: "Status", height: 20)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Stack(children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://cdn2.vectorstock.com/i/1000x1000/44/01/default-avatar-photo-placeholder-icon-grey-vector-38594401.jpg"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0XFF008069),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Color(0XFFFFFFFF),
                      size: 15,
                    ),
                  ),
                ),
              )
            ]),
          ),
          title: UiHelper.CustomText(text: "My Status", height: 20),
          subtitle:
              UiHelper.CustomText(text: "Tap to add status update", height: 15),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            UiHelper.CustomText(text: "Recent updates", height: 15),
            Icon(
              Icons.arrow_drop_down,
              color: Color(0XFF5E5E5E),
            )
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(statusContent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: statusContent[index]["name"].toString(),
                      height: 16,
                      fontweight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: statusContent[index]["statTime"].toString(),
                      height: 12));
            },
            itemCount: statusContent.length,
          ),
        )
      ],
    ));
  }
}
