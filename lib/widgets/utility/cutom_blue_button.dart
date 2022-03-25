
import 'package:flutter/cupertino.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';

class CustomBlueButton extends StatelessWidget {
  var onPressed;
  var text;

  CustomBlueButton({Key? key,@required this.onPressed, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
       textStyle: TextStyle(color: whiteclr,fontWeight: FontWeight.bold,fontSize: 20),
      child: Container(
        height: 50,
        width: 340,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: lightblue,
        borderRadius: BorderRadius.circular(10.0),
      ),
        child: Text(text) ,
      )

    );
  }
}
