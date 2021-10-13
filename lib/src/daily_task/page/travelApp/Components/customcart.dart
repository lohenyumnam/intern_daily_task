import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
    );
  }
}
