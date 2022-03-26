
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/modules/home/home_main.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';

class BuyCarDetails extends StatefulWidget {
  const BuyCarDetails({Key? key}) : super(key: key);

  @override
  State<BuyCarDetails> createState() => _BuyCarDetailsState();
}

class _BuyCarDetailsState extends State<BuyCarDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar (
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 25.sp,color: blckclr,)),
          backgroundColor: whiteclr,
          title: Text('Buy Now',style: TxtStyleN,),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Image.asset("assets/images/maskgroup.png",
                  height: 150,width: 350,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 2.h,),
                Text('ALFA ROMEO Stelvio 2.0 Q4 280 TI',style: TxtStyleB ,),
                SizedBox(height: 2.h,),
                Text('2019',style: TxtStyleG,),
                SizedBox(height: 2.h,),
                Text('Automatic',style: TxtStyleG,),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Region: ZH',style: TxtStyleG,),
                  Container(
                    height: 35,
                    width: 100,
                    color: btngrey,
                    alignment: Alignment.center,
                    child: Text('CHF 43’900.',style: TxtStyleW,),
                  )
                ],),
                SizedBox(height: 3.h,),
                Align(
                  alignment:  Alignment.centerLeft,
                    child: Text('Vehicle details',style: TxtStyleG,)),
                SizedBox(height: 5.h,),
                Image.asset("assets/images/group.png",
                  height: 250,width: 350,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 5.h,),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Text('Remarks ',style: TxtStyleG,)),
                Row(
                  children:  [
                    Expanded(
                      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content',
                        style: TxtStyleG, ),
                    )
                  ],
                ),
                SizedBox(height: 3.h,),
                Row(
                  children:   [
                    Expanded(
                      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content',
                        style: TxtStyleG,),
                    )
                  ],
                ),
                SizedBox(height: 3.h,),
                Divider(thickness: 1.0,color: blckclr,),
                SizedBox(height: 2.h,),
                Row(
                  children: const [
                    Icon(Icons.perm_contact_calendar_outlined,size: 25,),
                    Text('Address',style: TextStyle(
                      fontSize: 20.0,
                      color: txtblack,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),
                SizedBox(height: 3.h,),
                Row(
                  children: const [
                    Icon(Icons.dialer_sip_outlined,size: 22,),
                    Text('044-504-2499',style: TextStyle(
                      fontSize: 20.0,
                      color: txtblack,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),
                SizedBox(height: 3.h,),
                Row(
                  children: const [
                    Icon(Icons.email_outlined,size: 22,),
                     Text('@gmail.com', style: TextStyle(
                      fontSize: 20.0,
                      color: txtblack,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),
                SizedBox(height: 3.h,),
                Row(
                  children: const [
                    Icon(Icons.chat_bubble_outline,size: 22,),
                      Text('Chat Now',style: TextStyle(
                      fontSize: 20.0,
                      color: txtblack,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],
                ),
                SizedBox(height: 4.h,),
                CustomBlueButton(
                    onPressed: (){
                      Get.offAll(()=> HomeMainScreen());
                    },
                    text: 'Back to home page')
              ],
            ),
          ),
        ),

      ),
    );
  }
}
