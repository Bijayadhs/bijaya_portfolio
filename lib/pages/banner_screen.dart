import 'package:bijaya_portfolio/constants.dart';
import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height - 50;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 100,
            child: BallWidget(width: 40),
          ),
          Positioned(
            top: 80,
            right: 50,
            child: BallWidget(width: 80),
          ),
          Positioned(
            top: 300,
            left: 180,
            child: BallWidget(width: 120),
          ),
          Positioned(
            top: h / 2 - 120,
            left: w / 2 - 120,
            child: BallWidget(width: 240),
          ),
          Positioned(
            top: h / 2 - 100,
            left: w / 2 - 160,
            child: MyTitleWidget(
                child: Column(
              children: [
                Text(
                  '👋 Hi, I am',
                  style: kBannerTitle,
                ),
                Text('Bijaya Adhikari', style: kNameTitle)
              ],
            )),
          ),
          Positioned(
            top: h / 2,
            right: w / 2 - 220,
            child: MyTitleWidget(
              child: Text(
                'A Full Stack Developer',
                style: kBannerTitle,
              ),
            ),
          ),
          Positioned(
            top: h / 2 + 50,
            left: w / 2 - 120,
            child: MyTitleWidget(
              child: Text(
                'Flutter',
                style: kBannerTitle,
              ),
            ),
          ),
          Positioned(
            top: h / 2 + 100,
            left: w / 2 - 80,
            child: MyTitleWidget(
              child: Text(
                'React',
                style: kBannerTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTitleWidget extends StatelessWidget {
  final Widget child;
  const MyTitleWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: child);
  }
}

class BallWidget extends StatelessWidget {
  final double width;
  const BallWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(width),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.indigo[200]!],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 8,
            spreadRadius: -2,
            color: Colors.indigo[200]!,
          ),
        ],
      ),
      child: Text(''),
    );
  }
}
