import 'package:flutter/material.dart';
import 'Components/customtabs.dart';

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
                padding: const EdgeInsets.all(10),
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
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                      ),
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
                const MyCustomTabs(),
                Container(
                  height: 500,
                ) //tabs
                //cards
                //cards
              ],
            ),
          ),
        ],
      ),
    );
  }
}
