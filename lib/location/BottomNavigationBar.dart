import 'package:flutter/material.dart';
import 'package:triplt_project/Soon/Soon.dart';
import 'package:triplt_project/location/Location.dart';
import 'package:triplt_project/notification/notification.dart';
import 'package:triplt_project/paris/ParisPage.dart';
import 'package:triplt_project/profile/Profile.dart';

import '../new/newtour.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex=2;
  final screens= [
     NewTours(),
    const Notifications(),
    const Location(),
    const Soon(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children:screens,
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index)=>setState(()=> currentIndex=index),
          items: [
            BottomNavigationBarItem(icon: Image.asset("assets/icons/Icon.png"),label: "Home"),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/heart.png"),label: "Notification" ),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/Suitcase.png",),label: "Location" ),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/Calendar.png"),label: "Calendar" ),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/avatar.png"),label: "Profile" ),
          ],),
    );
  }
}
