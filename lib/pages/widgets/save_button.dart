import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () => Navigator.pushNamed(context, "/success"),
      padding: EdgeInsets.all(12),
      color: Colors.red,
      child: Text("Save",
        style: TextStyle(
          color: Colors.white
        ),
      )
    );
  }
}