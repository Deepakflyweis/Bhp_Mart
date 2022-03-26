
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kunal_app/modules/forgot_password/forgot_password.dart';
import 'package:kunal_app/modules/home/home_index.dart';
import 'package:kunal_app/modules/signup/signup_screen.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginId = TextEditingController();
  final _loginPswd = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign In',style: TxtStyleB,),
          // leading: IconButton(
          //     onPressed: () => Navigator.of(context).pop(),
          //     icon: Icon(Icons.arrow_back_ios,size: 20.sp,color: blckclr,)),
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
                SizedBox(height: 5.h),
                Text('Welcome to',style: headingTxtStyle,),
                SizedBox(height: 1.h),
                Text(
                  'Enter your Phone number or Email for ',
                  style: TxtStyleG,),

                Row(
                  children: [
                    Text('sign in, Or ' ,style: TxtStyleG,) ,
                    TextButton(
                        child: Text('Create new account.',style: TxtStyleBl, ),
                      onPressed: (){
                        Get.to(()=> Signup());
                      },
                    ),
                  ],
                ),
                SizedBox(height: 5.h),

                //user id
                Center(
                  child: Container(
                    width: 85.w,
                    height: 8.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 1.0, color: Colors.black),

                    ),
                    child: TextFormField(
                      controller: _loginId,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        hintText: 'User id',
                        suffixIcon: Icon(Icons.mobile_screen_share_outlined,color: blckclr,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),

                //password
                Center(
                  child: Container(
                    width: 85.w,
                    height: 8.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(width: 1.0, color: blckclr  ),

                    ),
                    child: TextFormField(
                      controller: _loginPswd,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off,color: Colors.black),
                        hintText: 'Password',
                        hintStyle: TxtStyleG,
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),

                Align(
                   alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(' Forget Password?',style: TxtStyleG, ),
                    onPressed: (){
                      Get.to(()=> ForgotPassword());
                    },
                  ),
                ),
                SizedBox(height: 3.h),
                CustomBlueButton(
                    onPressed: (){
                      Get.offAll(()=> HomeIndex(0));
                    },
                    text:  'Sign in'
                ),
                SizedBox(height: 3.h),
                Center(
                  child: Text('Or',style: TxtStyleG,),
                ),
                SizedBox(height: 3.h),
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset('assets/images/apple.png',),
                ),
                SizedBox(height: 1.h),
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset('assets/images/google.png',),
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
