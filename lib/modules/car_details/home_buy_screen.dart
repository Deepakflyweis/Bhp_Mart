
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kunal_app/modules/profile/my_profile.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:sizer/sizer.dart';

import 'car_details.dart';

class HomeBuyScreen extends StatefulWidget {
  const HomeBuyScreen({Key? key}) : super(key: key);

  @override
  State<HomeBuyScreen> createState() => _HomeBuyScreenState();
}

class _HomeBuyScreenState extends State<HomeBuyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => Get.to(()=> MyProfile()),
                icon: Icon(Icons.account_circle,
                  size: 30.sp,color: blckclr,)),
            actions: [
              IconButton(
                icon: Icon(Icons.search,size: 30.sp,color: blckclr,),
                onPressed: () {

                },
              ),
              // add more IconButton
            ],

            backgroundColor: whiteclr,
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Automatic',style: TxtStyleG,),
                      InkWell(
                        onTap: (){
                          Get.to(()=> BuyCarDetails());
                        },
                        child: Container(
                          height: 35,
                          width: 100,
                          color: btngrey,
                          alignment: Alignment.center,
                          child: Text('BUY NOW',style: TxtStyleW,),
                        ),
                      )
                    ],
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Automatic',style: TxtStyleG,),
                      InkWell(
                        onTap: (){
                          Get.to(()=> BuyCarDetails());
                        },
                        child: Container(
                          height: 35,
                          width: 100,
                          color: btngrey,
                          alignment: Alignment.center,
                          child: Text('BUY NOW',style: TxtStyleW,),
                        ),
                      )
                    ],
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Automatic',style: TxtStyleG,),
                      InkWell(
                        onTap: (){
                          Get.to(()=> BuyCarDetails());
                        },
                        child: Container(
                          height: 35,
                          width: 100,
                          color: btngrey,
                          alignment: Alignment.center,
                          child: Text('BUY NOW',style: TxtStyleW,),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 2.h,),
                ],
              ),
            ),
          ),
        )
    );
  }
}
