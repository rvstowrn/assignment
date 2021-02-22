import 'package:assignment/pages/provider/calculation_provider.dart';
import 'package:assignment/pages/widgets/calculation_input.dart';
import 'package:assignment/pages/widgets/camera_button.dart';
import 'package:assignment/pages/widgets/date_input.dart';
import 'package:assignment/pages/widgets/details_input.dart';
import 'package:assignment/pages/widgets/header.dart';
import 'package:assignment/pages/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  
  @override
  Widget build(BuildContext context) {
    final stateData = Provider.of<CalculationProvider>(context);
    bool showWidget = stateData.value!=0;
    return Scaffold(
      body:SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            SizedBox(height:20),
            Header(),
            SizedBox(height:20),
            CalculationInput(),
            SizedBox(height:10),
            (showWidget)?DetailsInput():Container(),
            SizedBox(height:10),
            (showWidget)?Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DateInput(),
                CameraButton()
              ],
            ):Container(),
            Expanded(child:Container()),
            SaveButton()
          ]
        )
      )
    );
  }

}