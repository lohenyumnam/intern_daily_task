import 'package:flutter/material.dart';

import 'customcart.dart';

class CardHolder extends StatelessWidget {
  const CardHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 400,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: MyCustomCard(
                imgtitle: "Night King Beach",
                imgUrl:
                    "https://images.pexels.com/photos/3293150/pexels-photo-3293150.jpeg?cs=srgb&dl=pexels-asad-photo-maldives-3293150.jpg&fm=jpg",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: MyCustomCard(
                imgtitle: "Night King Beach",
                imgUrl:
                    "https://images.pexels.com/photos/3293150/pexels-photo-3293150.jpeg?cs=srgb&dl=pexels-asad-photo-maldives-3293150.jpg&fm=jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
