import 'dart:developer';

import 'package:flutter/material.dart';

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
