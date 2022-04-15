// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          foregroundColor: Colors.black,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text('Home'),
          actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
          ),
        ),
         ],
        backgroundColor: Colors.transparent,

      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 250
        ),
        child: Container(
          width: double.infinity,

          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      50
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/MyPhoto.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
