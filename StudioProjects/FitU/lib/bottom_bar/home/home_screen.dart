import 'package:fitu/bottom_bar/home/drawer/feedback_screen.dart';
import 'package:fitu/bottom_bar/home/drawer/settings/settings_screen.dart';
import 'package:fitu/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.cyan.shade300,
                Colors.cyan.shade400,
              ],
            ),
          ),
        ),
        title: Text(
          'FitU',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.cyan.shade300,
                    Colors.cyan.shade400,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.cyan.shade200,
                    ),
                    child: Center(
                      child: Text(
                        "H",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 41,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Harshit",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "+919876543210",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //feedback
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FeedbackScreen(),
                            ),
                          );
                        });
                      },
                      child: Text(
                        'Feedback',
                        style: TextStyle(
                          color: kLightTextColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade100,
                            Colors.grey.shade400,
                            Colors.grey.shade100,
                          ],
                        ),
                      ),
                    ),
                  ),
                  //settings
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SettingsScreen(),
                            ),
                          );
                        });
                      },
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          color: kLightTextColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade100,
                            Colors.grey.shade400,
                            Colors.grey.shade100,
                          ],
                        ),
                      ),
                    ),
                  ),
                  //subscription
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Subscription',
                      style: TextStyle(
                        color: kLightTextColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade100,
                            Colors.grey.shade400,
                            Colors.grey.shade100,
                          ],
                        ),
                      ),
                    ),
                  ),
                  //share
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Share',
                      style: TextStyle(
                        color: kLightTextColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade100,
                            Colors.grey.shade400,
                            Colors.grey.shade100,
                          ],
                        ),
                      ),
                    ),
                  ),
                  //log out
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: kLightTextColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
