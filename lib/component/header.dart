import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:grow_spirit/provider/theme_provider.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    print("build triggered?");
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return AppBar(
      title: Consumer<ThemeProvider>(builder: (context, value, child) {
        return Text(value.theme  =="light"? "GrowLight": "GrowDark", style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25
        ));
      }),
      leading: const Icon(Icons.accessibility, size: 30,),
      leadingWidth: 40,
      actions: <Widget>[
          IconButton(onPressed: () {
          }, icon: const Icon(Icons.notifications_active)),
        IconButton(onPressed: () {
          themeProvider.theme == "light" ? themeProvider.setTheme("dark"): themeProvider.setTheme("light");
        }, icon: const Icon(Icons.ac_unit))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
