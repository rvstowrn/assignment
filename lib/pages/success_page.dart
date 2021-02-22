import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  double circleWidth=0;
  double circleHeight=0;
  
  @override
  void initState(){
    super.initState();
    Timer(Duration(milliseconds: 500), (){
      setState(() => circleWidth = circleHeight = 200);
    });
  }

  Widget animatedSuccessCircle(){
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.bounceOut,
      width: circleWidth,
      height: circleHeight,
      child: Icon(Icons.check,
        size: max(0, circleHeight/2),
        color: Colors.white
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle
      ),
    );
  }

  Widget successText(){
    return Text("Transaction Saved",
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        fontSize: 15
      ),
      textAlign: TextAlign.center,
    ); 
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; 
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: Center(child:animatedSuccessCircle()), 
              width: screenWidth,
              height: 200,
              top: 200,
            ),
            Positioned(
              top: 420,
              width: screenWidth,
              child: successText(),
            )
          ],
        )
      ),
    );
  }

}