import 'package:flutter/material.dart';
import 'package:task/views/home_screen.dart';
import 'package:task/views/shop_screen.dart';

class RootApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ShopScreen()
    );
  }
}
