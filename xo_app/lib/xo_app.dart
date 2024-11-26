// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class XoApp extends StatefulWidget {
  const XoApp ({super.key});

  @override
  State<XoApp> createState() => _XoAppScreenState();
}

class _XoAppScreenState extends State<XoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(145, 105, 240, 175),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            scoreDisplay(scoreX : 0 , scoreO : 0),
            SizedBox(height: 20),
            GameBoard (),
            SizedBox(height: 20),
            ActionButtons(),
          ],
        ),
      ),
    );
  }
  
  scoreDisplay({required int scoreX, required int scoreO}) {}
}
class ScoreDisplay extends StatelessWidget {
  final int scoreX ;
  final int scoreO ;
  
  const ScoreDisplay ({super.key, required this.scoreO , required this.scoreX});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'TIC TAC TOE',
          style: TextStyle(
            fontSize: 24 ,
            fontWeight: FontWeight.bold ,
            color: Colors.white 
          ), 
        )
      ],
    );
  }
}
class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: Center(
              child: Text(
                '', 
                style: TextStyle(fontSize: 48, color: Colors.white), 
              ),
            ),
          ),
        );
      },
      itemCount: 9, 
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            
          },
          style: ElevatedButton.styleFrom(iconColor: Colors.blue), 
          child: Text('NEW GAME'),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            
          },
          style: ElevatedButton.styleFrom(iconColor: Colors.red), 
          child: Text('RESET GAME'),
        ),
      ],
    );
  }
  }


