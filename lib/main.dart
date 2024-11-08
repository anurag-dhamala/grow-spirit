import "package:flutter/material.dart";

void main() {
  runApp(const GrowSpirit());
}

class GrowSpirit extends StatelessWidget {

  const GrowSpirit({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(title: "GrowSpirit"),
    );
  }

}

class Homepage extends StatefulWidget {

  const Homepage({super.key, required this.title});

  final String title;

  @override
  State<Homepage> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Column(
          children: [
            Text("Hello world")
          ],
        ),
      );    
  }
  
}