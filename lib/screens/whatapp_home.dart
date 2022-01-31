import 'package:flutter/material.dart';
import 'package:whatapp_clone/screens/camera_screen.dart';
import 'package:whatapp_clone/screens/chat_screen.dart';
import 'package:whatapp_clone/screens/status_screen.dart';
import 'package:whatapp_clone/widgets/custom_appbar.dart';

import 'call_sreen.dart';

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
      appBar: CustomAppBar(tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).appBarTheme.color,
        child: Icon(Icons.message),
        onPressed: () {
          print("open chat");
        },
      ),
    );
  }
}
