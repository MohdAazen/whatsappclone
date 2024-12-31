import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/HomeScreen/Calls/callscreen.dart';
import 'package:whatsappclone/Screens/HomeScreen/Camera/camerascreen.dart';
import 'package:whatsappclone/Screens/HomeScreen/Chats/chatsscreen.dart';
import 'package:whatsappclone/Screens/HomeScreen/Status/statusscreen.dart';
import 'package:whatsappclone/Widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
            padding: EdgeInsets.only(right: 20),
          ),
          backgroundColor: Color(0XFF008069),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
              text: "WhatsApp",
              height: 20,
              color: Colors.white,
              fontweight: FontWeight.bold),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/Search.png")),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallScreen()
          ],
        ),
      ),
    );
  }
}
