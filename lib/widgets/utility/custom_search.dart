
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:sizer/sizer.dart';

class SearchFields extends StatelessWidget {
  SearchFields(
      {Key? key,
        required this.controller,
        this.obscure = false})
      : super(key: key);

  bool obscure;
  TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhysicalModel(
          color: whiteclr,
          elevation: 4,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: SizedBox(
            width: 80.w,
            height: 8.h,
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(15),
          child: TextFormField(
            obscureText: obscure,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size: 5.h,),
                constraints: BoxConstraints(maxWidth: 100.w),
                border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}