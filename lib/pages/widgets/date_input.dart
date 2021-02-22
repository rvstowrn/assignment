import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateInput extends StatefulWidget {
  @override
  _DateInputState createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  DateTime date;

  @override
  void initState(){
    super.initState();
    DateTime now = new DateTime.now();
    setState(() => date= new DateTime(now.year, now.month, now.day));
  }


  void openDatePicker(){
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                child: Text("Done",
                  style:TextStyle(
                    color:Colors.white
                  )
                ),
                color: Colors.grey[900],
                onPressed: () => Navigator.pop(context)
              ),
            ),
            Container(
              height: 200,
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  brightness: Brightness.dark,
                ),
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: date,
                  onDateTimeChanged: (DateTime newdate) {
                    setState(() => date= new DateTime(newdate.year, newdate.month, newdate.day));
                  },
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openDatePicker,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:10),
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[400]),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children:[
            Icon(Icons.calendar_today,
              color: Colors.red,
              size: 20,
            ),
            SizedBox(width: 5,),
            Text("${date.day}/${date.month}/${date.year}",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400
              ),
            ),
          ]
        ),
      ),
    );
  }


  // focusNode _node1, 
  // bool _focused = false; 
  // Color _color = Colors.white; 
  // FocusNode _node1 = FocusNode();
  // @override 
  // void initState() { 
  //   super.initState(); 
  //   _node1.requestFocus(); 
  //   _node1.addListener(_handleFocusChange); 
  // } 
  // void _handleFocusChange() { 
  //   print(_node1.hasFocus); 
  //   if (_node1.hasFocus != _focused) 
  //   { 
  //     setState(() { 
  //       _focused = _node1.hasFocus; 
  //       _color = Colors.white; 
  //     });
  //   } 
  // }
}