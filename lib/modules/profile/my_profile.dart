
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/modules/login/login_screen.dart';
import 'package:kunal_app/modules/profile/edit_profile.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:sizer/sizer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final loginFormKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Profile',style: TxtStyleB,),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 20.sp,color: blckclr,)),
          backgroundColor: whiteclr,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: loginFormKey,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:   [
                  Row(
                    children:   [
                      const CircleAvatar(
                        backgroundColor: blueclr,
                        radius: 30,
                      ),
                      SizedBox(width: 2.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text('Edward Larry',style: TxtStyleB ,),
                          Text('senior',style: TxtStyleG ,),
                        ],
                      ),
                      SizedBox(width: 25.w,),
                      InkWell(
                        onTap: (){
                          Get.to(()=> EditProfile());
                        },
                        child: Image.asset('assets/images/edit.png',
                          alignment: Alignment.bottomRight,
                          height: 15.sp,),
                      )
                    ],
                  ),

                  SizedBox(height: 2.h,),
                  Divider(thickness: 2.0,color: blckclr,),
                  SizedBox(height: 5.h,),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 7.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 1.5,color: blckclr)
                      ),
                      child: Text('Buy Car',style: TxtStyleB,) ,
                    ),
                  ),

                  SizedBox(height: 4.h,),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 7.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(width: 1.5,color: blckclr)
                      ),
                      child: Text('Sell Car',style: TxtStyleB,) ,
                    ),
                  ),

                  SizedBox(height: 4.h,),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 7.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(width: 1.5,color: blckclr)
                      ),
                      child: Text('Subscription',style: TxtStyleB,) ,
                    ),
                  ),
                  SizedBox(height: 5.h,),

                   Align(
                     alignment: Alignment.centerLeft,
                     child: GestureDetector(
                       onTap: (){
                         Get.offAll(()=> LoginScreen());
                       },
                       child: Image.asset(
                         'assets/images/logout.png',
                         height: 30,fit: BoxFit.fitHeight,
                       ),
                     ),
                   )





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
