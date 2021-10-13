import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 500,
      width: 350,
      color: Colors.red,
      child: Image.asset('assets/images/865178.jpg', fit: BoxFit.cover),
    );
  }
}
