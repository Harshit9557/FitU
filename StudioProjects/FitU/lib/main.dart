import 'package:fitu/bottom_bar/master_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitU());
}

class FitU extends StatelessWidget {
  const FitU({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: Master(),
    );
  }
}
