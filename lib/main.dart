import 'package:flutter/material.dart';
import 'package:tetris/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext){
    return MaterialApp(home:HomeScreen() ,);
  }
}
