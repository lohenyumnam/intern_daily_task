import 'package:flutter/material.dart';
import 'package:intern_daily_task/src/daily_task/page/golden_beach.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key, required this.imgurl}) : super(key: key);
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 450,
      child: Stack(children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GoldenBeach()));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            const Text("data")
          ],
        )
      ]),
    );
  }
}
