
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/modules/subscription/pay_send.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:sizer/sizer.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
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
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(height: 3.h,),
            Card(
              color: blueclr,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
             child: Column(
               children: [
                 SizedBox(height: 2.h,),
                 Row(
                   children: [
                     SizedBox(width: 2.w,),
                     Container(
                       height: 65,
                       width: 65,
                       color: Colors.grey,
                     ),
                     SizedBox(width: 2.w,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Montly Plan',style: TxtStyleW,),
                         Text('10/User',style: TxtStyleW,),

                       ],
                     )
                   ],
                 ),
                 SizedBox(height: 2.h,),
                 Row(
                   children: [
                     Icon(Icons.star,color: Colors.yellow,size: 25 ,),
                     Text('Unlimted Sell Car',style: TxtStyleW,),

                     SizedBox(width: 2.w,),
                     Icon(Icons.star,color: Colors.yellow,size: 25,),
                     Text('Unlimted Buy Car',style: TxtStyleW,),
                   ],
                 ),
                 SizedBox(height: 2.h,),

               RawMaterialButton(
                  onPressed: (){
                    Get.to(()=> PaynSendR());

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  textStyle: TextStyle(color: blckclr,fontWeight: FontWeight.bold,fontSize: 20),
                  child: Container(
                    height: 50,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('Buy') ,
                  )
                ),
                 SizedBox(height: 2.h,),
               ],
             ),
            )
          ],

        ),
      ),
    );
  }
}
