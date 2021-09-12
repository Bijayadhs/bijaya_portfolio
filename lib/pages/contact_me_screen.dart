import 'package:bijaya_portfolio/constants.dart';
import 'package:flutter/material.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFEDF2F8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleWidget(text1: "Let's", text2: "Talk"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactWidget(
                  icon: Icons.mail_outline,
                  text: ' bijayadhikari107@gmail.com',
                ),
                SizedBox(width: 20),
                ContactWidget(
                    icon: Icons.phone_enabled_outlined, text: ' +61424428959'),
              ],
            ),
            SizedBox(height: 40),
            TitleWidget(text1: "Find", text2: "Me"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialWidget(icon: Icons.link),
                SizedBox(width: 20),
                SocialWidget(icon: Icons.link),
                SizedBox(width: 20),
                SocialWidget(icon: Icons.link),
              ],
            ),
            SizedBox(height: 40),
            CopyrightWidget(),
          ],
        ),
      ),
    );
  }
}

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('copyright © 2021 Bijaya Adhikari, All right reserved. ');
  }
}

class SocialWidget extends StatelessWidget {
  final IconData icon;
  const SocialWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(icon),
      backgroundColor: Colors.white,
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const TitleWidget({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: kHighlightTitle,
        ),
        SizedBox(width: 4),
        Text(
          text2,
          style: kNormalTitle,
        ),
      ],
    );
  }
}

class ContactWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContactWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(icon),
            Text(text),
          ],
        ));
  }
}
