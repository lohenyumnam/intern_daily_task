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
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/865178.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      Positioned(
        top: 15,
        right: 15,
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
      ),
      const Positioned(
        left: 15,
        bottom: 50,
        child: Text('Card Title'),
      ),
    ]);
  }
}
