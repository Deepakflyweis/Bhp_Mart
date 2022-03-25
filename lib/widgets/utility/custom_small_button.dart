

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';

class CustomSmallButton extends StatelessWidget {
  var onPressed;
  var text;

  CustomSmallButton({Key? key,@required this.onPressed, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)) ,
        textStyle: TextStyle(color: blueclr,fontWeight: FontWeight.bold,fontSize: 16),
        child: Container(
          height: 30,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: lightblue,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 1.0, color: blckclr),

          ),
          child: Text(text) ,
        )

    );
  }
}