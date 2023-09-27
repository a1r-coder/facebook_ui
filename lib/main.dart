import 'package:facebook_ui/pages/home_page.dart';
import 'package:facebook_ui/pages/homework.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: homework(),
      routes: {
        Home_page.id: (context) => Home_page(),
      },
    );
  }
}
