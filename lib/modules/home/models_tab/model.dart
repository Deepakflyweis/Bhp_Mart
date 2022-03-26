
import 'package:flutter/material.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/custom_small_button.dart';
import 'package:sizer/sizer.dart';

class ModelsCar extends StatefulWidget {
   const ModelsCar({Key? key}) : super(key: key);

   @override
   State<ModelsCar> createState() => _ModelsCarState();
 }

 class _ModelsCarState extends State<ModelsCar> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         children: [
           Align(
             alignment: Alignment.centerLeft,
             child: Text('Popular Model',style: TxtStyleN,),
           ),
           SizedBox(height: 3.h,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               CustomSmallButton(
                   onPressed: (){},
                   text: 'Alto'),
               CustomSmallButton(
                   onPressed: (){},
                   text: 'Baleno'),
               CustomSmallButton(
                   onPressed: (){},
                   text: 'Ertiga'),
             ],
           ),

           SizedBox(height: 3.h,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               CustomSmallButton(
                   onPressed: (){},
                   text: 'Swift'),
               CustomSmallButton(
                   onPressed: (){},
                   text: 'Swift Dzire'),
               CustomSmallButton(
                   onPressed: (){},
                   text: 'Wagonr'),
             ],
           ),
           SizedBox(height: 3.h,),
           Align(
             alignment: Alignment.centerLeft,
             child: Text('All Model ',style: TxtStyleN,),
           ),
           SizedBox(height: 3.h,),
         ],
       ),
     );
   }
 }
