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
          top: 220
        ),
        child: SizedBox(
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
              SizedBox(height: 15,),
              Text(
                  'Mohamed Ibrahim',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),

              ),
              SizedBox(height: 15,),
              Text(
                'Im not intrested in anything',
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(

                        '540',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Rating',
                        style: TextStyle(

                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 35,),
                  Column(
                    children: [
                      Text(

                        '700',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(

                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 35,),
                  Column(
                    children: [
                      Text(
                        '142',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                      'Subsecribe'
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.purple,
                      ),

                    ),
                    SizedBox(width: 15,),
                    Text(
                      'Lives in Cairo',
                      style: TextStyle(
                        fontSize: 15
                      ),
                    ),
                  ],


              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.work,
                      color: Colors.orange,
                    ),

                  ),
                  SizedBox(width: 15,),
                  Text(
                    'Works as Member at OSC',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ],


              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),

                  ),
                  SizedBox(width: 15,),
                  Text(
                    'Skills Flutter, C++, Unity & other',
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ],


              ),
            ],
          ),
        ),

      ),
    );
  }
}
