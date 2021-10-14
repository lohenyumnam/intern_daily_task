import 'package:flutter/material.dart';
import 'package:intern_daily_task/src/daily_task/page/golden_beach.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 250,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoldenBeach()));
                },
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("data"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
