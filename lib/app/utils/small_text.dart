import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final double height;
  final FontWeight fontWeight;

  const SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    this.height = 1.2,
    this.fontWeight = FontWeight.w200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: 1.2,
      ),
    );
  }
}
