import "package:flutter/material.dart";

class MainLayout extends StatelessWidget {
  const MainLayout({super.key, required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: childWidget,
    );
  }
}
