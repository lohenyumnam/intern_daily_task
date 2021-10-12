import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('Where would you like to go?'),
          ),
          pinned: true,
          floating: true,
          snap: false,
          backgroundColor: Colors.orange,
          leading: IconButton(
              onPressed: () {
                debugPrint('Menu button pressed');
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
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(200), child: SizedBox()),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.redAccent,
              child: const Text('Container'),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.redAccent,
              child: const Text('Container'),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.redAccent,
              child: const Text('Container'),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.redAccent,
            ),
          ]),
        )
      ]),
    );
  }
}
