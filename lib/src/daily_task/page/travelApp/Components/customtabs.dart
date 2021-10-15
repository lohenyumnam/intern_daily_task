import 'package:flutter/material.dart';

class MyCustomTabs extends StatefulWidget {
  const MyCustomTabs({Key? key}) : super(key: key);

  @override
  State<MyCustomTabs> createState() => _MyCustomTabsState();
}

class _MyCustomTabsState extends State<MyCustomTabs> {
  final double sBox = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.orange,
              tabs: [
                Tab(
                  text: 'Popular',
                ),
                Tab(
                  text: 'Recommended',
                ),
                Tab(
                  text: 'Cost-effect',
                )
              ]),
        ),
        TabBarView(controller: null, children: [Text("data")])
      ],
    );
  }
}
