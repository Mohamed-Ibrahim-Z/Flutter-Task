import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task/components/button_icon.dart';
import 'package:task/components/categories_model.dart';
import 'package:task/components/products_card.dart';

import '../components/search.dart';
class ShopScreen extends StatelessWidget {
   ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.blueGrey,
        ),
        title: const Center(
          child: Text(
            'EDEKA',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueAccent
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonIcon(
                myIcon: const Icon(
                  Icons.next_plan_outlined,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonIcon(
                myIcon: const Icon(
                  Icons.add,
                )),
          ),


        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 130,
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Search(),
                  const SizedBox(width: 30,),
                  ButtonIcon(
                    myIcon: const Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 110,
                child: ListView(
                  children: [
                    CategoryModel(image: 'assets/Fruits.png', text: 'Fruits',),
                    const SizedBox(width: 20,),
                    CategoryModel(image: 'assets/juice.png', text: 'Juice'),

                    const SizedBox(width: 20,),
                    CategoryModel(image: 'assets/Beard.png', text: 'Bakery'),
                    const SizedBox(width: 20,),
                    CategoryModel(image: 'assets/vegetables.png', text: 'Vegetables'),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.only(top:10),
                childAspectRatio: 0.683,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                children: [
                  ProductsCard(
                      image: 'assets/Lemon.jpg', nameText: 'Lemon', description: 'Bergamo Italy', price: '1.20'),
                  ProductsCard(
                      image: 'assets/Banana.jpg', nameText: 'Banana', description: 'Casttier Italiano', price: '2.05'),
                  ProductsCard(
                      image: 'assets/Grape.png', nameText: 'Grape', description: 'Casttier Italiano', price: '3.15'),
                  ProductsCard(
                      image: 'assets/Mango.jpg', nameText: 'Mango', description: 'Ewyse', price: '5'),
                  ProductsCard(
                      image: 'assets/Orange.png', nameText: 'Orange', description: 'Bergamo Italy', price: '2.1'),
                  ProductsCard(
                      image: 'assets/Pepper.png', nameText: 'Pepper', description: 'Casttier Italiano', price: '4'),

                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}

