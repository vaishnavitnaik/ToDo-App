import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:todo_app/pages/todo_page.dart';

void main() async {
  // initialise a hive
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primarySwatch: Colors.yellow,
          appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.yellow,
          )),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
