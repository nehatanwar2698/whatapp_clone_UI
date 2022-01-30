import 'package:flutter/material.dart';

class WhatAppHome extends StatefulWidget {
  WhatAppHome({Key? key}) : super(key: key);

  @override
  _WhatAppHomeState createState() => _WhatAppHomeState();
}

class _WhatAppHomeState extends State<WhatAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            const Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
