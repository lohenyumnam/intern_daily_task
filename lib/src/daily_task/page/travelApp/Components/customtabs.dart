import 'package:flutter/material.dart';

class MyCustomTabs extends StatelessWidget {
  const MyCustomTabs({Key? key}) : super(key: key);

  final double sBox = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Stack(children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text("Popular"),
                ),
                SizedBox(
                  width: sBox,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text("Recommended"),
                ),
                SizedBox(
                  width: sBox,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text("Cost-Effect"),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
