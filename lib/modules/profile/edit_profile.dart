
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';
import 'package:sizer/sizer.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final loginFormKey = GlobalKey<FormState>();
  final _emailkey = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _birthdate = TextEditingController();
  final _birthmonth = TextEditingController();
  final _birthyear = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
           title: Text('Edit Profile',style: TxtStyleB,),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  Center(
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
                      onPressed: (){},
                      text: 'DONE'),
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
