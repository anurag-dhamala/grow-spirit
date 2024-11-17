import 'package:flutter/material.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() {
    return _HeroSectionState();
  }
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Anurag !",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )
              ],
            )),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "How are you feeling today ?",
            style: TextStyle(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  customBorder: const CircleBorder(
                      eccentricity: 1,
                      side: BorderSide(
                        width: 30,
                      )),
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2.0)),
                    child: const Icon(
                      Icons.accessibility_rounded,
                      size: 50,
                    ),
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
