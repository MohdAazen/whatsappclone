import 'package:flutter/material.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class Contactscreen extends StatelessWidget {
  var contactContent = [
    {
      "img":
          "https://st.depositphotos.com/1715570/2652/i/450/depositphotos_26521259-stock-photo-portrait-of-a-handsome-young.jpg",
      "name": "Rock",
      "status": "Busy"
    },
    {
      "img":
          "https://st.depositphotos.com/1715570/2652/i/450/depositphotos_26521259-stock-photo-portrait-of-a-handsome-young.jpg",
      "name": "Rock",
      "status": "Busy"
    },
    {
      "img":
          "https://st.depositphotos.com/1715570/2652/i/450/depositphotos_26521259-stock-photo-portrait-of-a-handsome-young.jpg",
      "name": "Rock",
      "status": "Busy"
    },
    {
      "img":
          "https://st.depositphotos.com/1715570/2652/i/450/depositphotos_26521259-stock-photo-portrait-of-a-handsome-young.jpg",
      "name": "Rock",
      "status": "Busy"
    },
    {
      "img":
          "https://st.depositphotos.com/1715570/2652/i/450/depositphotos_26521259-stock-photo-portrait-of-a-handsome-young.jpg",
      "name": "Rock",
      "status": "Busy"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: UiHelper.CustomText(
              text: "Select Contact", height: 18, color: Colors.white),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
          ]),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(contactContent[index]["img"].toString()),
              ),
              title: UiHelper.CustomText(
                  text: contactContent[index]["name"].toString(),
                  height: 16,
                  fontweight: FontWeight.bold,
                  color: Color(0xff000000)),
              subtitle: UiHelper.CustomText(
                  text: contactContent[index]["status"].toString(), height: 14),
            );
          },
          itemCount: contactContent.length),
    );
  }
}
