import 'package:bijaya_portfolio/constants.dart';
import 'package:bijaya_portfolio/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kSecondaryColor,
        scaffoldBackgroundColor: kScaffoldColor,
      ),
      home: HomeScreen(),
    );
  }
}
