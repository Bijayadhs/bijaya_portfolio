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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's",
                  style: kHighlightTitle,
                ),
                SizedBox(width: 4),
                Text(
                  "Talk",
                  style: kNormalTitle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Email'),
                Text('Phone'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
