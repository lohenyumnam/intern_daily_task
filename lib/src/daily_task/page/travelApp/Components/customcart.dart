import 'package:flutter/material.dart';

import 'pages/page1.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({
    Key? key,
    required this.imgUrl,
    required this.imgDis,
    required this.imgName,
  }) : super(key: key);
  final String imgUrl, imgDis, imgName;

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
                      builder: (context) => Beach1(
                        imgUrl: imgUrl,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: imgUrl,
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        imgName,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(imgDis)
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
