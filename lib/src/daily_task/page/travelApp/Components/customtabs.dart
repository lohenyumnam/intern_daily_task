import 'package:flutter/material.dart';

class MyCustomTabs extends StatelessWidget {
  const MyCustomTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: Text('Popular'),
            ),
            Expanded(
              child: Text('Recomended'),
            ),
            Expanded(
              child: Text('Cost-effect'),
            ),
          ],
        ),
      ],
    );
  }
}
