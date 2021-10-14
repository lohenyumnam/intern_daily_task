import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 500,
          width: 350,
          color: Colors.red,
          child: Image.asset('assets/images/865178.jpg', fit: BoxFit.cover),
        ),
      ),
      const Positioned(
        top: 15,
        right: 15,
        child: IconButton(onPressed: null, icon: Icon(Icons.favorite)),
      )
    ]);
  }
}
