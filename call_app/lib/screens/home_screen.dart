// ignore_for_file: unused_field, prefer_final_fields

import 'package:call_app/screens/contact_screen.dart';
import 'package:call_app/screens/group_screen.dart';
import 'package:call_app/screens/recents_screen.dart';
import 'package:flutter/material.dart';
import 'package:call_app/components/recents_model.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Recents(),
    const Contacts(),
    const Groups()
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Recents", backgroundColor: Color(0xffE7EDFB),),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Groups"),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
