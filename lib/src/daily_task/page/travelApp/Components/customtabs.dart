import 'package:flutter/material.dart';

class MyCustomTabs extends StatelessWidget {
  const MyCustomTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: const Text('Popular'),
              ),
            ),
            const Expanded(
              child: Text('Recomended'),
            ),
            const Expanded(
              child: Text('Cost-effect'),
            ),
          ],
        ),
      ],
    );
  }
}
