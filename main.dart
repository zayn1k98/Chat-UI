import 'package:flutter/material.dart';
import 'package:chat_ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.teal[50],
      ),
      home: HomeScreen(),
    );
  }
}
