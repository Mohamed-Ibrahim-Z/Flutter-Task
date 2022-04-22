import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel extends StatefulWidget {
  String? image;

  String? text;

  Color color = Colors.white;
  CategoryModel({required this.image ,required this.text,this.color = Colors.white,Key? key}) : super(key: key);

  @override
  State<CategoryModel> createState() => _CategoryModelState();
}

class _CategoryModelState extends State<CategoryModel> {
  Color imageColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){

            if(widget.color == Colors.green) {
              imageColor = Colors.grey;

              widget.color = Colors.white;
            } else {
              imageColor = Colors.white;
              widget.color = Colors.green;
            }
            setState(() {

            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 80,
            height: 65,
            child: Image.asset(
              widget.image!,
              color: imageColor,
              width: 5,
              height: 5,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.text!,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
