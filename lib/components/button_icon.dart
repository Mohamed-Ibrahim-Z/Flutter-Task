import 'package:flutter/material.dart';

Widget ButtonIcon(
{
  required Icon myIcon,
  Color iconColor = Colors.blue,
  Color boxColor = Colors.black12,
  double boxRadius = 10.0,
  double height = 40.0,
  double width = 40.0,
}
) => Container(
  height: height,
  width: width,
  child: IconButton(
    color: iconColor,
    icon: myIcon,
    onPressed: () {},
  ),
  decoration: BoxDecoration(
    color: boxColor,
    borderRadius: BorderRadius.circular(boxRadius),
  ),
);