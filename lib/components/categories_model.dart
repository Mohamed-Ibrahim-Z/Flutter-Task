import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CategoryModel(
{
  required String image,
  required String text,
  Color color = Colors.white,
}
) => Column(
  children: [
    Container(

      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),

      width: 80,
      height: 65,
      child: Image.asset(
        image,
        color: Colors.grey,
        width: 5,
        height: 5,
      ),

    ),
    const SizedBox(height: 10,),
    Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
);