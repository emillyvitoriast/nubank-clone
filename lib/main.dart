import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(NubankCloneApp());

class NubankCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          primary: Colors.purple[700],
          secondary: Color(0xFF830AD1),
        ),
      ),
      home: HomeScreen(),
    );
  }
}