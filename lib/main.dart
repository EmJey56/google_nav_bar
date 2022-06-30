// This file is made by EmJey
// Project: google_nav_bar_example
// FileName: main
// Date: 2022/06/30
// Email: emjey561@gmail.com
// Github: EmJey56

import 'package:flutter/material.dart';
import 'package:google_nav_bar_example/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePgae(),
    );
  }
}
