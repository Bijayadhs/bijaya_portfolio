import 'package:bijaya_portfolio/screens/about_me_screen.dart';
import 'package:bijaya_portfolio/screens/banner_screen.dart';
import 'package:bijaya_portfolio/screens/contact_me_screen.dart';
import 'package:bijaya_portfolio/screens/project_screen.dart';
import 'package:bijaya_portfolio/screens/skill_screen.dart';
import 'package:bijaya_portfolio/screens/header_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  void scrollUp() {
    final double start = 0;
    // controller.jumpTo(start);
    controller.animateTo(
      start,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Bijaya A.',
      //     style: TextStyle(
      //       fontWeight: FontWeight.w900,
      //     ),
      //   ),
      //   centerTitle: true,
      //   actions: [
      // IconButton(
      //   icon: Icon(Icons.menu),
      //   onPressed: () {},
      // ),
      //   ],
      // ),
      // drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.upload_sharp),
        onPressed: scrollUp,
      ),
      body: ListView(
        controller: controller,
        children: [
          HeaderScreen(),
          BannerScreen(),
          AboutMeScreen(),
          ProjectScreen(),
          SkillScreen(),
          ContactMeScreen(),
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset('logo.png', height: 100),
            ListTile(
              title: Text('About Me'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
