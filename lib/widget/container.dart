import 'package:flutter/material.dart';
import 'package:loyiha_ishi_laza/widget/list/data.dart';

class ContainerMenWomen extends StatelessWidget {
  double width;
  double height;
  String image;
  String text;
  ContainerMenWomen({super.key, required this.width, required this.height, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFFF5F6FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(color: Color(0xFFFEFEFE), borderRadius: BorderRadius.circular(10)),
            child: Image.asset(image),
          ),
          Text(text),
        ],
      ),
    );
  }
}
