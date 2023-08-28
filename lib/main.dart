import 'package:flutter/material.dart';
import 'pages/home_pages.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //initialize the hive box
  await Hive.initFlutter();
  //open a box
  await Hive.openBox("Habit_database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //if you want to change the blue theme of app, change the primary swatch
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

