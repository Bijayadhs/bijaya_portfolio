import 'package:bijaya_portfolio/constants.dart';
import 'package:flutter/material.dart';

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
