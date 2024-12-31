import 'package:flutter/material.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "userImages":
          "https://img.freepik.com/free-photo/artist-white_1368-3546.jpg?semt=ais_hybrid",
      "name": "Aron",
      "lastMsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msgs": "7"
    },
    {
      "userImages":
          "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
      "name": "Rahul",
      "lastMsg": "Lorem 4 Ipsum",
      "time": "04:15 am",
      "msgs": "3"
    },
    {
      "userImages":
          "https://thumbs.dreamstime.com/b/beautiful-smiling-businesswoman-arms-folded-standing-black-suit-brown-jacket-isolated-white-background-also-105189427.jpg",
      "name": "Anjali",
      "lastMsg": "Lorem Conver Ipsum",
      "time": "12:50 pm",
      "msgs": "4"
    },
    {
      "userImages":
          "https://img.freepik.com/free-photo/artist-white_1368-3546.jpg?semt=ais_hybrid",
      "name": "Aron",
      "lastMsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msgs": "7"
    },
    {
      "userImages":
          "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
      "name": "Rahul",
      "lastMsg": "Lorem 4 Ipsum",
      "time": "04:15 am",
      "msgs": "3"
    },
    {
      "userImages":
          "https://thumbs.dreamstime.com/b/beautiful-smiling-businesswoman-arms-folded-standing-black-suit-brown-jacket-isolated-white-background-also-105189427.jpg",
      "name": "Anjali",
      "lastMsg": "Lorem Conver Ipsum",
      "time": "12:50 pm",
      "msgs": "4"
    },
    {
      "userImages":
          "https://img.freepik.com/free-photo/artist-white_1368-3546.jpg?semt=ais_hybrid",
      "name": "Aron",
      "lastMsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msgs": "7"
    },
    {
      "userImages":
          "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
      "name": "Rahul",
      "lastMsg": "Lorem 4 Ipsum",
      "time": "04:15 am",
      "msgs": "3"
    },
    {
      "userImages":
          "https://thumbs.dreamstime.com/b/beautiful-smiling-businesswoman-arms-folded-standing-black-suit-brown-jacket-isolated-white-background-also-105189427.jpg",
      "name": "Anjali",
      "lastMsg": "Lorem Conver Ipsum",
      "time": "12:50 pm",
      "msgs": "4"
    },
    {
      "userImages":
          "https://img.freepik.com/free-photo/artist-white_1368-3546.jpg?semt=ais_hybrid",
      "name": "Aron",
      "lastMsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msgs": "7"
    },
    {
      "userImages":
          "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
      "name": "Rahul",
      "lastMsg": "Lorem 4 Ipsum",
      "time": "04:15 am",
      "msgs": "3"
    },
    {
      "userImages":
          "https://thumbs.dreamstime.com/b/beautiful-smiling-businesswoman-arms-folded-standing-black-suit-brown-jacket-isolated-white-background-also-105189427.jpg",
      "name": "Anjali",
      "lastMsg": "Lorem Conver Ipsum",
      "time": "12:50 pm",
      "msgs": "4"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          arrContent[index]["userImages"].toString()),
                    ),
                    title: UiHelper.CustomText(
                        text: arrContent[index]["name"].toString(),
                        height: 14,
                        fontweight: FontWeight.bold),
                    subtitle: UiHelper.CustomText(
                        text: arrContent[index]["lastMsg"].toString(),
                        height: 12),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomText(
                            text: arrContent[index]["time"].toString(),
                            height: 12),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0XFF036A01),
                          child: UiHelper.CustomText(
                              text: arrContent[index]["msgs"].toString(),
                              height: 12,
                              color: Color(0XFFFFFFFF)),
                        )
                      ],
                    ),
                  );
                },
                itemCount: arrContent.length,
              ),
            ),
          ],
        ),
        floatingActionButton: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Icon(
            Icons.chat,
            color: Color(0XFFFFFFFF),
          ),
        ));
  }
}
