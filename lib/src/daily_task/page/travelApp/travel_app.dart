import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Where you want to go'),
          ),
          pinned: true,
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
