import 'package:flutter/material.dart';
import 'package:my_app/Login/Login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laos travel',
      theme: ThemeData(primaryColorLight: Colors.white),
      home: Login(),
    );
  }
}
