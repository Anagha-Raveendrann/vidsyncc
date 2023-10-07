import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vidsync/widget/common.dart';

class Bottomnavi extends StatelessWidget {
  const Bottomnavi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home,color: blue,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.discord),label: "Discover"),
        BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "Library"),
      ]),
    );
  }
}