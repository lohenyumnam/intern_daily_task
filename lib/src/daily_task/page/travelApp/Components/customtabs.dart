import 'package:flutter/material.dart';
import 'package:intern_daily_task/src/daily_task/page/travelApp/Components/model/card_con.dart';

import 'customcart.dart';

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
  final List<MyCardCon> crd = [
    MyCardCon(
        name: "name",
        imgurl:
            "https://images.pexels.com/photos/1439251/pexels-photo-1439251.jpeg?cs=srgb&dl=pexels-arthur-ogleznev-1439251.jpg&fm=jpg",
        dis: "dis"),
    MyCardCon(
        name: "name",
        imgurl:
            "https://images.pexels.com/photos/2765871/pexels-photo-2765871.jpeg?cs=srgb&dl=pexels-jeremy-bishop-2765871.jpg&fm=jpg",
        dis: "dis"),
    MyCardCon(
        name: "name",
        imgurl:
            "https://images.pexels.com/photos/2797332/pexels-photo-2797332.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-2797332.jpg&fm=jpg",
        dis: "dis"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: myTabs.length,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.orange,
                tabs: myTabs,
              ),
              SizedBox(
                height: 450,
                child: TabBarView(
                  children: [
                    SizedBox(
                      width: 100,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        MyCustomCard(
                          imgDis: crd[0].dis,
                          imgName: crd[0].name,
                          imgUrl: crd[0].imgurl,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MyCustomCard(
                          imgDis: crd[1].dis,
                          imgName: crd[1].name,
                          imgUrl: crd[1].imgurl,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MyCustomCard(
                          imgDis: crd[2].dis,
                          imgName: crd[2].name,
                          imgUrl: crd[2].imgurl,
                        ),
                      ]),
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.green,
                      height: 200,
                    )
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
