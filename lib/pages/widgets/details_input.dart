import 'package:flutter/material.dart';

class DetailsInput extends StatefulWidget {
  @override
  _DetailsInputState createState() => _DetailsInputState();
}

class _DetailsInputState extends State<DetailsInput> {
  String val="";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          TextField(
            onChanged: (str)=> setState(()=>val=str),
            decoration: new InputDecoration(
              contentPadding: EdgeInsets.only(left:10),
              focusedBorder:InputBorder.none,
              enabledBorder:InputBorder.none,
              hintText: "Enter Details (Item Name, Bill No, Qunatity...)",
              hintStyle: TextStyle(
                fontSize:13,
                letterSpacing: -1
              )
            ),
          ),
          Divider(),
          (val!="")?Row(
            children: [
              Checkbox(value: true, onChanged: (state){}),
              Text("Share details with test",
                style: TextStyle(
                  color:Colors.grey[600]
                ),
              )
            ],
          ):Container()
        ],
      ),
    );
  }
}