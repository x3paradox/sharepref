import 'package:flutter/material.dart';
import 'package:flutter_application_5/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Share Pref'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
