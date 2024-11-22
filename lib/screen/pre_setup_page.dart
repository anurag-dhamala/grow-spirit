import 'package:flutter/material.dart';
import 'package:grow_spirit/layout/layout.dart';
import 'package:grow_spirit/routes.dart';
import 'package:hive/hive.dart';

class PreSetupPage extends StatefulWidget {
  const PreSetupPage({super.key});

  @override
  State<PreSetupPage> createState() {
    return _PreSetupPageState();
  }
}

class _PreSetupPageState extends State<PreSetupPage> {
  String selectedType = "";
  String username = "";

  void onChooseType(String type) async {
    var box = await Hive.openBox("pre-setup");
    box.put("selectedType", type);
    setState(() {
      selectedType = type;
    });
  }

  void onUsernameSet(BuildContext context) async {
    var box = await Hive.openBox("pre-setup");
    box.put("username", username);
    if (!context.mounted) return;
    Navigator.pushNamed(context, Routes.homePage);
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      childWidget: selectedType == ""
          ? Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What would you like to grow into ?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                onChooseType("Warrior");
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                ),
                                child: const Center(
                                  child: Text("Warrior"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                onChooseType("Right Warrior");
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                ),
                                child: const Center(
                                  child: Text("Right warrior"),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                onChooseType("Guru");
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                ),
                                child: const Center(
                                  child: Text("Guru"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                onChooseType("Bottom Warrior");
                              },
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                ),
                                child: const Center(
                                  child: Text("Bottom warrior"),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          : Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Give yourself a name", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        username = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () {
                          onUsernameSet(context);
                        },
                        child: const Text("Yay!")),
                  )
                ],
              ),
            ),
    );
  }
}
