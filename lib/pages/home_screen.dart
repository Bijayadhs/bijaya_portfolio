import 'package:bijaya_portfolio/pages/about_me_screen.dart';
import 'package:bijaya_portfolio/pages/banner_screen.dart';
import 'package:bijaya_portfolio/pages/contact_me_screen.dart';
import 'package:bijaya_portfolio/pages/project_screen.dart';
import 'package:bijaya_portfolio/pages/skill_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bijaya A.',
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: [
          // IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chevron_right_rounded),
        onPressed: () {},
      ),
      body: ListView(
        children: [
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
