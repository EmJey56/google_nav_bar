// This file is made by EmJey
// Project: google_nav_bar_example
// FileName: about_me
// Date: 2022/06/30
// Email: emjey561@gmail.com
// Github: EmJey56

import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "I'm EmJey and I love coding and building apps.",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
