import "package:flutter/material.dart";
import "package:grow_spirit/component/header.dart";
import "package:grow_spirit/component/hero_section.dart";

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
    return Scaffold(
      appBar: const Header(),
      body: Container(
        margin: const EdgeInsets.all(
          15
        ),
        child: const Column(
          children: [HeroSection()],
        ),
      ),
    );
  }
}
