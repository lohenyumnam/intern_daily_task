import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('Where would you like to go?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          pinned: true,
          backgroundColor: Colors.orange,
          expandedHeight: 300,
          leading: IconButton(
              onPressed: () {
                debugPrint('Back button pressed');
              },
              icon: const Icon(Icons.menu)),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              ),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      ]),
    );
  }
}
