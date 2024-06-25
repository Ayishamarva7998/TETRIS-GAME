

import 'package:flutter/material.dart';
import 'package:tetris/screens/piece.dart';
import 'package:tetris/screens/pixels.dart';
import 'package:tetris/screens/values.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  // //game dimensions
  // int rowLength = 10;
  // int colLength = 15;

  //current tetris piece
  piece currentPiece = piece(type: Tetris.L);

  @override
  void initState() {
    super.initState();
    startGame();
  }
  void startGame(){
    currentPiece.initializedPiece();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: rowLength * colLength,
        physics:const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: rowLength),
          itemBuilder: (context, index) {
            // return Pixels(color: Colors.grey[900], child: index);
            if(currentPiece.position.contains(index)){
              return Pixels(color: Colors.yellow, child: index);
              
            }else{
              return Pixels(color: Colors.grey[900], child: index) ;
            }
          }
          // Pixels(color: Colors.grey[900], child: index)
          
          ),
    );
  }
}
