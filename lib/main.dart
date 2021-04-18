import 'package:blood_donation/blood_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

