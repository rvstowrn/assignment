import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

List<String> operators = ["+","-","/","*"];

class CalculationProvider with ChangeNotifier{
  double value = 0;
  String equation = "";

  double performOperation(String currentOperator,double operand){
    double localValue = value;
    switch (currentOperator) {
        case "-":
          localValue-=operand;
          break;
        case "+":
          localValue+=operand;
          break;
        case "*":
          localValue*=operand;
          break;
        case "/":
          localValue/=operand;
          break;
        default:
    }
    return localValue;
  }  

  void addToEquation(String val,int type){
    if(type==-1){
      equation=(equation.length==1)?"":equation.substring(0,equation.length-1); 
    }
    else{
      equation+=val;  
    }
    List operands = equation.split(new RegExp("[\\+\\-\\*\\/]"));
    String localEquation = "+"+equation;
    int i = 0;
    value = 0;
    if(equation.length>0){
      operands.forEach((element) {
        double operand = double.parse(element);
        value = performOperation(localEquation[i], operand);
        i=i+element.length+1; 
      });
    }
    notifyListeners();
  }

}