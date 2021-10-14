import 'package:flutter/material.dart';

import 'Components/customcart.dart';
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
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Text(
                        'Where would you like to go?',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
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
                const MyCustomTabs(), //tabs
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 400,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: MyCustomCard(
                            imgUrl:
                                "https://images.pexels.com/photos/1151282/pexels-photo-1151282.jpeg?cs=srgb&dl=pexels-nathan-cowley-1151282.jpg&fm=jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //cards
                //cards
              ],
            ),
          ),
        ],
      ),
    );
  }
}
