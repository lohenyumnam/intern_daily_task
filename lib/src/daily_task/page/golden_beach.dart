import 'package:flutter/material.dart';

class GoldenBeach extends StatelessWidget {
  const GoldenBeach({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Hero(
              tag: "_pic",
              child: Container(
                color: Colors.red,
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  "https://images.pexels.com/photos/3293150/pexels-photo-3293150.jpeg?cs=srgb&dl=pexels-asad-photo-maldives-3293150.jpg&fm=jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
