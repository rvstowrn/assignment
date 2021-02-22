import "package:flutter/material.dart";

class CameraButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.circular(5)
      ),
      child:IconButton(
        icon:Icon(Icons.camera_alt_outlined,
          color: Colors.red,
        ),
        onPressed: (){},
      ),
    );
  }
}