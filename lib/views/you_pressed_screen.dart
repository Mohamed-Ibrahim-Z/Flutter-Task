import 'package:flutter/material.dart';

class YouPressedScreen extends StatelessWidget {
  @required String pressed;

  YouPressedScreen({required this.pressed, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Pressed Screen',
      ),),
      body: Center(
        child: Text('You Pressed $pressed'),
      ),
    );
  }
}