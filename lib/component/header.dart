import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("GrowSpirit", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      )),
      leading: const Icon(Icons.accessibility, size: 30,),
      leadingWidth: 40,
      actions: <Widget>[
          IconButton(onPressed: () {
          }, icon: const Icon(Icons.notifications_active)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
