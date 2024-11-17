import 'package:flutter/material.dart';
import 'package:grow_spirit/layout/layout.dart';

class PreSetupPage extends StatefulWidget {
  const PreSetupPage({super.key});

  @override
  State<PreSetupPage> createState() {
    return _PreSetupPageState();
  }
}

class _PreSetupPageState extends State<PreSetupPage> {
  String selectedType = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MainLayout(
      childWidget: Center(
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
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(
                          child: Text("Warrior"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(
                          child: Text("Right warrior"),
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
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(
                          child: Text("Warrior"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(
                          child: Text("Right warrior"),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
