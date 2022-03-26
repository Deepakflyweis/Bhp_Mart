
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';

 class PaynSendR extends StatefulWidget {
   const PaynSendR({Key? key}) : super(key: key);

   @override
   State<PaynSendR> createState() => _PaynSendRState();
 }

 class _PaynSendRState extends State<PaynSendR> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
         child: Scaffold(
           appBar: AppBar (
             leading: IconButton(
                 onPressed: () => Navigator.of(context).pop(),
                 icon: Icon(Icons.arrow_back_ios,size: 25.sp,color: blckclr,)),
             backgroundColor: whiteclr,
             centerTitle: true,
             elevation: 0,
           ),
           body: Column(

             children: [
               SizedBox(
                 height: 20.h,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   GestureDetector(
                            onTap: (){},
                            child: Image.asset('assets/images/applep.png',height: 150,fit: BoxFit.fitHeight, ),
                          ),

                   GestureDetector(
                            onTap: (){},
                            child: Image.asset('assets/images/paypalp.png',height: 140,fit: BoxFit.fitHeight,),
                          ),
                   GestureDetector(
                     onTap: (){},
                     child: Image.asset('assets/images/applep.png',height: 150,fit: BoxFit.fitHeight, ),
                   ),
                 ],
               ),

               SizedBox(
                 height: 5.h,
               ),

               CustomBlueButton(
                   onPressed: (){},
                   text: 'Pay & Send Request')
             ],

           ),
         ));
   }
 }

