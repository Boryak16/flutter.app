import 'package:flutter/material.dart';
import 'package:learnyngm/modules/login_screen/Login_screen.dart';

import 'layout/home_layout.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false ,
      home: HomeLayout(),
    );
  }
}
