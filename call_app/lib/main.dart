import 'package:call_app/screens/group_screen.dart';
import 'package:call_app/screens/home_screen.dart';
import 'package:call_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Call App",
      home: Home(),
    );
  }
}