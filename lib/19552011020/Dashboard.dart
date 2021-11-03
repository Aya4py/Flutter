
import 'dart:html';

import 'package:flutter/material.dart';

class Dashboard extend StatefulWidget{
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() async => _DashboardState();
}

class _Dashboard extend State<Dashboard> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.black,
      body: Center(
        child: Text('Dashboard Page',
         style: TextStyle(color: Color.white),
         )
      ),
    )
  }
}