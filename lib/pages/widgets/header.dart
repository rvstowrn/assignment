import 'package:assignment/pages/provider/calculation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stateData = Provider.of<CalculationProvider>(context);
    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(Icons.arrow_back,
            color: Colors.red,
          ),
        ),
        SizedBox(width: 40,),
        Align(
          child:Text("You gave test ${stateData.value==0?'':'₹ ${stateData.value}'}",
            style:TextStyle(
              fontSize: 15,
              color: Colors.red,
              fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
        )
      ],
    );
  }
}