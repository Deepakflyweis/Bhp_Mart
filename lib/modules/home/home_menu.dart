
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/custom_search.dart';
import 'package:kunal_app/widgets/utility/custom_small_button.dart';
import 'package:sizer/sizer.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  final _search = TextEditingController();

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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 3.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomSmallButton(
                          onPressed: (){},
                          text: 'Brand'),
                      CustomSmallButton(
                          onPressed: (){},
                          text: 'Model'),
                      CustomSmallButton(
                          onPressed: (){},
                          text: 'Year'),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomSmallButton(
                          onPressed: (){},
                          text: 'Varient'),
                      CustomSmallButton(
                          onPressed: (){},
                          text: 'KMS Driven'),
                      CustomSmallButton(
                          onPressed: (){},
                          text: 'State'),
                    ],
                  ),
                  SizedBox(height: 5.h,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Select Car brand',style: TxtStyleB,),
                  ),
                  SizedBox(height: 2.h,),
                  SearchFields(
                    controller: _search,
                    obscure: false,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Popular Brands',style: TxtStyleN,),
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      GestureDetector(
                        child: Image.asset('assets/images/nisaan.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitWidth,) ,),
                      SizedBox(width: 2.w,),

                      GestureDetector(
                        child: Image.asset('assets/images/fiat.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitHeight,) ,),
                      SizedBox(width: 2.w,),

                      GestureDetector(
                        child: Image.asset('assets/images/wolks.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitHeight,) ,),
                    ],
                  ),

                  SizedBox(height: 2.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      GestureDetector(
                        child: Image.asset('assets/images/hyundai.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitWidth,) ,),
                      SizedBox(width: 2.w,),

                      GestureDetector(
                        child: Image.asset('assets/images/tata.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitHeight,) ,),
                      SizedBox(width: 2.w,),

                      GestureDetector(
                        child: Image.asset('assets/images/chevrlot.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitHeight,) ,),
                    ],
                  ),

                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      GestureDetector(
                        child: Image.asset('assets/images/audi.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitWidth,) ,),
                      SizedBox(width: 2.w,),

                      GestureDetector(
                        child: Image.asset('assets/images/merced.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitHeight,) ,),
                      SizedBox(width: 2.w,),

                      GestureDetector(
                        child: Image.asset('assets/images/jag.png',
                          height: 90,
                          width: 100,
                          fit: BoxFit.fitHeight,) ,),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ));
  }
}
