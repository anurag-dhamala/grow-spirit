import 'package:flutter/material.dart';
import 'package:grow_spirit/component/header.dart';

class PreSetupPage extends StatefulWidget {
  const PreSetupPage({super.key});

  @override
  State<PreSetupPage> createState() {
    // TODO: implement createState
    return _PreSetupPageState();
  }
}

class _PreSetupPageState extends State<PreSetupPage> {
  String selectedType = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: const Header(),
        body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Choose your personality type",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedType = "INFP";
                          });
                          print("Tapped infp");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: MediaQuery.of(context).size.height / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                          ),
                          child: const Text("INFP"),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedType = "INTP";
                          });
                          print("Tapped intp");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: MediaQuery.of(context).size.height / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                          ),
                          child: const Text("INTP"),
                        ),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedType = "INFJ";
                          });
                          print("Tapped infj");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: MediaQuery.of(context).size.height / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                          ),
                          child: const Text("INFJ"),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedType = "INTJ";
                          });
                          print("Tapped intj");
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: MediaQuery.of(context).size.height / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                          ),
                          child: const Text("INTJ"),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            )
          ])),
        ));
  }
}
