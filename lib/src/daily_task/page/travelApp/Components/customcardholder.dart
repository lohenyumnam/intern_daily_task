import 'package:flutter/material.dart';

class CardHolder extends StatelessWidget {
  const CardHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Container(
                    height: 450,
                    width: 300,
                    color: Colors.pink,
                    child: const Text('CardHolder'),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ));
  }
}
