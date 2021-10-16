import 'package:flutter/material.dart';

class Beach1 extends StatelessWidget {
  const Beach1({
    Key? key,
    required this.imgUrl,
    required this.imgName,
    required this.imgDis,
  }) : super(key: key);

  final String imgUrl, imgName, imgDis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 400,
            width: 500,
            child: Hero(
              tag: imgUrl,
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(imgName),
          Text(imgDis)
        ],
      ),
    );
  }
}
