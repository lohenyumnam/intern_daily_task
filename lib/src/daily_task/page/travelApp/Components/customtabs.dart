import 'package:flutter/material.dart';

class MyCustomTabs extends StatefulWidget {
  const MyCustomTabs({Key? key}) : super(key: key);

  @override
  State<MyCustomTabs> createState() => _MyCustomTabsState();
}

class _MyCustomTabsState extends State<MyCustomTabs> {
  final double sBox = 50.0;

  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Popular'),
    Tab(text: 'Recommended'),
    Tab(text: 'Recommended'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: const [
              TabBar(
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
                ],
              ),
              SizedBox(
                height: 100,
                child: TabBarView(
                  children: [
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
