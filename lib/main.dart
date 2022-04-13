// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:task/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
