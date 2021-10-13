import 'package:flutter/material.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              // title: Text('Where would you like to go?'),
              background: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
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
            delegate: SliverChildListDelegate(
              [
                DefaultTabController(
                  initialIndex: 1,
                  length: 3,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Tab(
                          text: 'Popular',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Tab(
                          text: 'Recommended',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Tab(
                          text: 'Cost-effect',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
