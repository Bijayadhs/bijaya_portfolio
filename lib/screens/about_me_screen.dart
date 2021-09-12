import 'package:bijaya_portfolio/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 6, vertical: 20),
      color: Colors.white,
      height: size.height,
      child: Column(
        children: [
          TitleWidget(text1: "About", text2: "Me"),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width / 4,
                child: Text(
                  'Hey, I am Bijaya, a passionate software developer from Nepal, with wide variety of skill in design, frontend and backend development. I love building crazy stuffs.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  maxLines: 10,
                ),
              ),
              Placeholder(
                color: Colors.indigo[300]!,
              ),
            ],
          )
        ],
      ),
    );
  }
}
