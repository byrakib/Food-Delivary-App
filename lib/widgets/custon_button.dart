import 'package:flutter/material.dart';
import 'package:food_delivery_app_class_17/themes/all_colors.dart';

// ignore: must_be_immutable
class CustonButton extends StatelessWidget {
  double? height = 50;
  double? width = 50;
  IconData icons;
  Color color;
  VoidCallback onTap;
  CustonButton({
    required this.color,
    required this.icons,
    required this.onTap,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Icon(icons, color: AllColors.whiteColors),
      ),
    );
  }
}
