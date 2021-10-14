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
                onTap: () {
                  debugPrint('Popular tapped.');
                },
                child: const Text('Popular'),
              ),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    debugPrint('Recomended tapped.');
                  },
                  child: const Text('Recomended')),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    debugPrint('Cost-effect tapped.');
                  },
                  child: const Text('Cost-effect')),
            ),
          ],
        ),
      ],
    );
  }
}
