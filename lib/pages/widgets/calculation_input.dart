import 'package:assignment/pages/provider/calculation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculationInput extends StatefulWidget {
  @override
  _CalculationInputState createState() => _CalculationInputState();
}
  
List<String> operators = ["+","-","/","*"];


class _CalculationInputState extends State<CalculationInput> {
  CalculationProvider stateData; 
  bool focused = false;
  int previousLength=0;
  String currentOperation = "#";
  TextEditingController valController = TextEditingController();


  void handleValue(String val){
    int inputLength = val.length;
    String last = (inputLength==0)?"":val[inputLength-1];
    bool flag = operators.contains(last);
    int type = (previousLength > inputLength)?-1:1; 
    stateData.addToEquation(last,type);
    if(flag){
      valController.text ="";
    }
    setState(() => previousLength=inputLength );
  }

  @override
  Widget build(BuildContext context) {
    setState(() => stateData =  Provider.of<CalculationProvider>(context));
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          TextField(
            controller: valController,
            onChanged: handleValue,
            decoration: new InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              prefixIcon: SizedBox(
                child: Center(
                  widthFactor: 0.0,
                  child: Text('₹',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.red
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(thickness: 2,),
          Text("${stateData.equation} ${stateData.value==0?'':'= ${stateData.value}'}",
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}