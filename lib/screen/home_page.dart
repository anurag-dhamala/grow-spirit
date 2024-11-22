import "package:flutter/material.dart";
import "package:grow_spirit/component/header.dart";
import "package:grow_spirit/component/hero_section.dart";
import "package:grow_spirit/layout/layout.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  String selectedType = "";

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
        childWidget: Column(
          children: [HeroSection()],
        ),
    );
  }
}
