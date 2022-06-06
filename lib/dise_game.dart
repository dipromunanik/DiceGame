import 'dart:math';

import 'package:dice_game/custom_button.dart';
import 'package:flutter/material.dart';

class DiseGame extends StatefulWidget {
  const DiseGame({Key key}) : super(key: key);

  @override
  _DiseGameState createState() => _DiseGameState();
}

class _DiseGameState extends State<DiseGame> {

  int _score =0;
  int highest_score=0;
  int _index1=0;
  int _index2=0;
  int dice_score=0;
  bool game_over =false;
  final random = Random.secure();


  final _dice_list =<String>[
    'images/d1.png',
    'images/d2.png',
    'images/d3.png',
    'images/d4.png',
    'images/d5.png',
    'images/d6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Score: $_score',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('Highest Score: $highest_score',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(_dice_list[_index1],height: 100,width: 100,),
                SizedBox(width: 5,),
                Image.asset(_dice_list[_index2],height: 100,width: 100,),
              ]
            ),
            Text('Dise Score: $dice_score',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
           CustomButton(
             child: Icon(Icons.add,size: 30,color: Colors.black,),
             onPressed: roll_Dise
           ),
            SizedBox(height: 10,),
            if(game_over) Text('Game Over',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.pink))
          ],
        ),
      ),
    );
  }



  void roll_Dise() {
    setState(() {
      _index1=random.nextInt(6);
      _index2=random.nextInt(6);
     dice_score =_index1+_index2+2;
     if(dice_score==4)
     {
       game_over =true;

       if(_score > highest_score){
         highest_score=_score;
       }
     }
     else{
       _score +=dice_score;
     }
    });
  }
}
