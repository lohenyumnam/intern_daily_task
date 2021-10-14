import 'package:flutter/material.dart';
import 'package:intern_daily_task/src/daily_task/page/golden_beach.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const GoldenBeach()));
      },
      child: Stack(children: [
        Positioned(
          child: Hero(
            tag: "Pic",
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
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        ),
        Positioned(
          left: 30,
          bottom: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Golden Beach',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
