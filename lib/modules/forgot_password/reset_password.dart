
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kunal_app/modules/login/login_screen.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _rcode = TextEditingController();
  final _newpswd = TextEditingController();
  final _cnfirmNew = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 25.sp,color: blckclr,)),
          backgroundColor: whiteclr,
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                Text('Reset Password',style: headingTxtStyle,),
                SizedBox(height: 1.h),
                Text(
                  'Reset code was sent to your email.   Please enter the code and create new password. ',
                  style: TxtStyleG,maxLines: 2,),

                SizedBox(height: 3.h),

                Text(
                  'Reset Code ',
                  style: TxtStyleG,),

                //Reset Code
                Container(
                  width: 85.w,
                  height: 8.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteclr,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 0.8, color: Colors.black),

                  ),
                  child: TextFormField(
                    controller: _rcode,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),

                Text(
                  'New Password  ',
                  style: TxtStyleN,),

                //New Password
                Container(
                  width: 85.w,
                  height: 8.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteclr,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 1, color: Colors.black),

                  ),
                  child: TextFormField(
                    controller: _newpswd,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      suffixIcon: Icon(Icons.visibility,color: blckclr,),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: 3.h),

                Text(
                  'Confirm New Password ',
                  style: TxtStyleN,),

                //Confirm New Password
                Container(
                  width: 85.w,
                  height: 8.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteclr,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 1, color: Colors.black),

                  ),
                  child: TextFormField(
                    controller: _cnfirmNew,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      suffixIcon: Icon(Icons.visibility,color: blckclr,),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: 5.h),

                CustomBlueButton(
                    onPressed: (){
                      Get.offAll(()=> LoginScreen());
                    },
                    text: 'Change password'
                ),



                SizedBox(height: 10.h),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
