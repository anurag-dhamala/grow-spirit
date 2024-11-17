import "package:flutter/material.dart";
import "package:grow_spirit/component/header.dart";

class MainLayout extends StatelessWidget {
  const MainLayout({super.key, required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: childWidget,
      ),
    );
  }
}
