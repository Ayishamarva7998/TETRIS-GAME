

import 'package:tetris/screens/values.dart';

class piece{
  //type of tetris piece
  Tetris type;
  piece({required this.type});

  //piece is just a list of integers
  List<int> position =[];
 
   //generate the integers
  void initializedPiece(){
    switch (type){
      case Tetris.L:
      position =[
        4,
        14,
        24,
        25
      ];

      break;
      default:
    }
  }
  
 
}