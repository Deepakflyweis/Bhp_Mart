
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kunal_app/modules/login/login_screen.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final signupFormKey = GlobalKey<FormState>();
  final _emailkey = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _birthdate = TextEditingController();
  final _birthmonth = TextEditingController();
  final _birthyear = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('REGISTER',style: TxtStyleB,),
          backgroundColor: whiteclr,
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: signupFormKey,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: blueclr,
                      radius: 30,
                    ),
                  ),

                  SizedBox(height: 3.h,),

                  Center(
                      child:  Text('Edward Larry',style: TxtStyleB ,)
                  ),
                  Center(
                      child:  Text('senior',style: TxtStyleG ,)
                  ),
                  SizedBox(height: 3.h,),

                  Text('Email Address',style: TxtStyleG),
                  TextField(
                    controller: _emailkey,
                    decoration: const InputDecoration(

                      labelText: ' ',


                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: blckclr),
                      ),
                    ),
                  ),


                  SizedBox(height: 2.h,),

                  Text('User Name',style: TxtStyleG),
                  TextField(
                    controller: _username,
                    decoration: const InputDecoration(

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: blckclr),
                      ),
                      labelText: ' ',
                    ),
                  ),
                  SizedBox(height: 2.h,),

                  Text('Password',style: TxtStyleG),
                  TextField(
                    controller: _password,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: blckclr),
                      ),
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide.none,
                      // ),
                      hintText: '*****',
                    ),
                  ),
                  SizedBox(height: 5.h,),

                  Text('Birth Date (optional)',style: TxtStyleG),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 25.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: whiteclr,
                        ),
                        child:  TextField(
                          controller: _birthdate,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: blckclr),
                            ),
                            hintText: 'date',
                          ),
                        ),
                      ),
                      Container(
                        width: 25.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: whiteclr,
                        ),
                        child:  TextField(
                          controller: _birthmonth,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: blckclr),
                            ),

                            hintText: 'month',
                          ),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: whiteclr,
                        ),
                        child:  TextField(
                          controller: _birthyear,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: blckclr),
                            ),

                            hintText: 'year',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  CustomBlueButton(
                      onPressed: (){
                        Get.offAll(()=> LoginScreen());
                      },
                      text: 'REGISTER'),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
