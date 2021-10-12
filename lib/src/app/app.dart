import 'package:flutter/material.dart';
import 'package:intern_daily_task/src/daily_task/page/daily_task.page.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const DailyTaskPage(),
    );
  }
}
