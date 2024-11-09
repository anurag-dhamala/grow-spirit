import "package:flutter/material.dart";
import "package:grow_spirit/component/header.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: Header(),
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "What is your personality type ?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("INFP"), Text("INTP")],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("INTJ"), Text("INFJ")],
                ))
              ],
            ),
          )
        ])));
  }
}
