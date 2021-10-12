import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intern_daily_task/src/daily_task/page/travelApp/travel_app.dart';

class DailyTaskPage extends StatelessWidget {
  const DailyTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Task List'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Task One'),
            subtitle: const Text('SliverAppBar & Hero Animation'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TravelApp()));
            },
          ),
          ListTile(
            title: const Text('Daily Task1'),
            subtitle: const Text('Some text here'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              log('Do something here');
            },
          ),
          ListTile(
            title: const Text('Daily Task1'),
            subtitle: const Text('Some text here'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              log('Do something here');
            },
          ),
          ListTile(
            title: const Text('Daily Task1'),
            subtitle: const Text('Some text here'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              log('Do something here');
            },
          ),
        ],
      ),
    );
  }
}
