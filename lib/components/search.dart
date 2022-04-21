import 'package:flutter/material.dart';

Widget Search () => Expanded(
child: Container(

  height: 40,
  child: TextFormField(
  decoration: const InputDecoration(
    hintText: 'Search product here',
    prefixIcon: Icon(Icons.search),
    border: InputBorder.none,
    iconColor: Colors.black12,
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.black12,
    ),
  ),
);