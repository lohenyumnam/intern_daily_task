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
          child: Image.asset('assets/images/865178.jpg', fit: BoxFit.cover),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            border: const Border(
              left: BorderSide(
                color: Colors.green,
                width: 10,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: 15,
        right: 15,
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
      )
    ]);
  }
}
