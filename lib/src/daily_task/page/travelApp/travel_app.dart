import 'dart:html';

import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            // title: Text('Where would you like to go?'),
            background: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Where would you like to go?',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          pinned: true,
          floating: false,
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
          expandedHeight: 250,
          // bottom: const PreferredSize(
          //   preferredSize: Size.fromHeight(200),
          //   child: SizedBox(),
          // ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            debugPrint('Popular');
                          },
                          child: const Text("Popular")),
                      const SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                            debugPrint('Recommended');
                          },
                          child: const Text("Recommended")),
                      const SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                            debugPrint('Cost-effect');
                          },
                          child: const Text("Cost-effect")),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
