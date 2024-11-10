import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("GrowSpirit"),
      actions: <Widget>[
          IconButton(onPressed: () {
          }, icon: const Icon(Icons.notifications_active))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
