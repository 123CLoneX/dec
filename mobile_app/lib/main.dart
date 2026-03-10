
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(BetProApp());
}

class BetProApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BetPro',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
