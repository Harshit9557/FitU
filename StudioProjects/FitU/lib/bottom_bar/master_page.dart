import 'package:fitu/bottom_bar/home/home_screen.dart';
import 'package:fitu/bottom_bar/notifications_screen.dart';
import 'package:fitu/bottom_bar/profile_screen.dart';
import 'package:flutter/material.dart';

int masterPageIndex = 0;

class Master extends StatefulWidget {
  static const String route = '/master';

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(),
      NotificationScreen(),
      ProfileScreen(),
    ];

    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            body: screens[masterPageIndex],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.cyan.shade100,
                    Colors.cyan.shade100,
                  ],
                ),
              ),
              child: BottomNavigationBar(
                selectedItemColor: Colors.cyan.shade600,
                //showUnselectedLabels: false,
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                selectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.home_outlined,
                        size: 30,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                      ),
                    ),
                    label: 'Notifications',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Icon(
                        Icons.person_outline,
                        size: 30,
                      ),
                    ),
                    label: 'Profile',
                  ),
                ],
                currentIndex: masterPageIndex,
                onTap: (index) => setState(() {
                  masterPageIndex = index;
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
