import 'package:flutter/material.dart';
import 'package:tetris/board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      GameBoard(),
    );
  }
}
