import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Bijaya A.',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Row(
            children: [
              MenuText(text: 'Home'),
              MenuText(text: 'About Us'),
              MenuText(text: 'Projects'),
              MenuText(text: 'Skills'),
              MenuText(text: 'Contact Us'),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuText extends StatelessWidget {
  final String text;
  const MenuText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverText(builder: (isHovered) {
      final hoverColor = isHovered ? Colors.indigo[600] : Colors.black54;
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 2,
        ),
        child: Text(text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: hoverColor,
            )),
      );
    });
  }
}

class OnHoverText extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverText({Key? key, required this.builder}) : super(key: key);

  @override
  _OnHoverTextState createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..translate(-2, -2, 0)
      ..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        curve: Curves.bounceInOut,
        duration: Duration(seconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }
}
