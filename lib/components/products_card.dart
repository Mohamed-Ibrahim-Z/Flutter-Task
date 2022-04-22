
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/you_pressed_screen.dart';

Widget ProductsCard({
  required String image,
  required String nameText,
  required String description,
  required String price,
  required BuildContext context,
  required String pressed,
  bool heart = false,
}) =>
    Card(
      shadowColor: Colors.grey,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                    },
                    child: Image.asset(
                      'assets/heart.png',
                      width: 50,
                      height: 22,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    nameText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          const Text(
                            '€',
                            style: TextStyle(color: Colors.green, fontSize: 10),
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                      )),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.green,
                        ),
                        child: IconButton(
                          onPressed:  (){Navigator.push(context, MaterialPageRoute(builder: (context) => YouPressedScreen(pressed: pressed)));},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
    );
