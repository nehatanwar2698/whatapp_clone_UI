import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  var tabController;

  CustomAppBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Color(0xff2a948a),
      title: Text("WhatsApp"),
      elevation: 0.7,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.search),
            SizedBox(width: 15),
            Icon(Icons.more_vert),
          ],
        )
        // Icon(Icons.search),
        // SizedBox(
        //   width: 20,
        // ),
        // Icon(
        //   Icons.more_vert,
        // )

        //* we can use like that
        // Icon(Icons.search),
        // Padding(padding: EdgeInsets.symmetric(horizontal:10)),
        //     Icon(Icons.more_vert),
      ],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.white,
        tabs: [
          const Tab(icon: Icon(Icons.camera_alt)),
          Tab(text: "CHATS"),
          Tab(text: "STATUS"),
          Tab(text: "CALLS"),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
