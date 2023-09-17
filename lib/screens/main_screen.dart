import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/contact.dart';
import 'package:flutter_application_7/screens/home.dart';
import 'package:flutter_application_7/screens/profile.dart';
import 'package:flutter_application_7/screens/search.dart';

class MainScreen extends StatefulWidget {

   MainScreen({super.key});

  


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int index = 0;

  List <Widget> screens = [HomePage(),
  Profile(),
  Search(),
  Contact(),
  ];
  @override

  
   
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],  
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {
            
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "contact"),

        ],
      ),    
    );
  }
}