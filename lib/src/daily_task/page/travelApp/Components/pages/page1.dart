import 'package:flutter/material.dart';

class Beach1 extends StatelessWidget {
  const Beach1({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: imgUrl,
            child: Image.network(imgUrl),
          ),
        ],
      ),
    );
  }
}
