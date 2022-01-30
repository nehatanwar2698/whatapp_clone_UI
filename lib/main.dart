import 'package:flutter/material.dart';

import 'screens/whatapp_home.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatapp',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: const Color(0xff2a948a),
      )),
      home: WhatAppHome(),
    );
  }
}
