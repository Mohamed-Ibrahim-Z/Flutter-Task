import 'package:flutter/material.dart';

import 'button_icon.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                Icons.favorite_border,
                color: Colors.red,
              )),
        ),


      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
