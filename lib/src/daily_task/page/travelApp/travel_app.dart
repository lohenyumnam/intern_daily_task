import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.orange,
          expandedHeight: 300,
          leading: Icon(Icons.menu),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('SM'),
            ),
          ],
        ),
      ]),
    );
  }
}
