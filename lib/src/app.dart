import 'package:flutter_hutech_food/src/resources/startpage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),// chọn startpage chạy đầu tiên
    );
  }
}