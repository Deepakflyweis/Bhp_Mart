
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kunal_app/modules/forgot_password/reset_password.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Forgot Password',style: TxtStyleB,),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,size: 20.sp,color: blckclr,)),
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
                SizedBox(height: 2.h),
                Text('Forgot Password',style: headingTxtStyle,),
                SizedBox(height: 1.h),
                Text(
                  ' Enter your email address and we will send you a reset instructions. ',
                  style: TxtStyleG,maxLines: 2,),

                SizedBox(height: 3.h),

                Text(
                    'EMAIL ADDRESS ',
                     style: TxtStyleG,),

                //Email Address
                Center(
                  child: Container(
                    width: 85.w,
                    height: 8.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(width: 0.3, color: Colors.black),

                    ),
                    child: TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        suffixIcon: Icon(Icons.mobile_screen_share_outlined,color: blckclr,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Divider(thickness: 1,color: blckclr,),

                SizedBox(height: 2.h),
                CustomBlueButton(
                    onPressed: (){
                      Get.to(()=> ResetPassword());
                    },
                    text:  'Reset password'
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
