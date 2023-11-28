import "package:consultan/schedule.screen.dart";
import "package:consultan/screens/about.screen.dart";
import "package:consultan/screens/home.screen.dart";
import "package:consultan/screens/setting.screen.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class navRoot extends StatefulWidget {
  @override
  State<navRoot> createState() => _navRootState();
}

class _navRootState extends State<navRoot> {
  int _selectedIndex = 0;
  final _screens = [
    HomeScreen(),
    Container(),
    ScheduleScreen(),
    AboutPage(),
    SettingScreen(),
    // SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 183, 193, 202),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          // unselectedFontSize: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill), label: "About"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid), label: "Setting")
          ],
        ),
      ),
    );
  }
}
