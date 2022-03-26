
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kunal_app/modules/car_details/car_details.dart';
import 'package:kunal_app/modules/profile/my_profile.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:sizer/sizer.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {

  // List<SelectCarModel> options = [
  //   SelectCarModel(
  //       img:
  //       "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cardekho.com%2Ftata%2Fnexon-ev&psig=AOvVaw0C_fau_1ARITmsowxXjMiN&ust=1648374492500000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDhr9K_4_YCFQAAAAAdAAAAABAD",
  //       carmodel: "ALFA ROMEO Stelvio  "),
  //   SelectCarModel(
  //       img:
  //       "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cardekho.com%2Ftata%2Fnexon-ev&psig=AOvVaw0C_fau_1ARITmsowxXjMiN&ust=1648374492500000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDhr9K_4_YCFQAAAAAdAAAAABAD",
  //       carmodel: "ALFA ROMEO Stelvio  ")
  // ];


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
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> BuyCarDetails());
                    },
                    child: Image.asset("assets/images/maskgroup.png",
                    height: 150,width: 350,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Text('ALFA ROMEO Stelvio 2.0 Q4 280 TI',style: TxtStyleB ,),
                  SizedBox(height: 2.h,),
                  Text('2019',style: TxtStyleG,),
                  SizedBox(height: 2.h,),
                  Text('Automatic',style: TxtStyleG,),
                  SizedBox(height: 2.h,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> BuyCarDetails());
                    },
                    child: Image.asset("assets/images/maskgroup.png",
                    height: 150,width: 350,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Text('ALFA ROMEO Stelvio 2.0 Q4 280 TI',style: TxtStyleB ,),
                  SizedBox(height: 2.h,),
                  Text('2019',style: TxtStyleG,),
                  SizedBox(height: 2.h,),
                  Text('Automatic',style: TxtStyleG,),
                  SizedBox(height: 2.h,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> BuyCarDetails());
                    },
                    child: Image.asset("assets/images/maskgroup.png",
                    height: 150,width: 350,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Text('ALFA ROMEO Stelvio 2.0 Q4 280 TI',style: TxtStyleB ,),
                  SizedBox(height: 2.h,),
                  Text('2019',style: TxtStyleG,),
                  SizedBox(height: 2.h,),
                  Text('Automatic',style: TxtStyleG,),
                  SizedBox(height: 2.h,),

                  // ListView.builder(
                  //     shrinkWrap: true,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     itemCount: options.length,
                  //     itemBuilder: (context, index) {
                  //       return Column(
                  //         children: [
                  //           InkWell(
                  //             onTap: (){
                  //               // Get.to(()=> CreateRideScreen());
                  //             },
                  //             child: Container(
                  //               height: 15.h,
                  //               width: 100.w,
                  //               decoration: BoxDecoration(
                  //                   border: Border.all(
                  //                       color: Colors.white, width: 0.2.w),
                  //                   borderRadius:
                  //                   BorderRadius.all(Radius.circular(10))),
                  //               child: Column(
                  //                 children: [
                  //                   Container(
                  //                     height: 15.h,
                  //                     width: 30.w,
                  //                     decoration: BoxDecoration(
                  //                         borderRadius: BorderRadius.only(
                  //                             topLeft: Radius.circular(10),
                  //                             bottomLeft: Radius.circular(10)),
                  //                         image: DecorationImage(
                  //                             fit: BoxFit.cover,
                  //                             image: NetworkImage(
                  //                                 options[index].img))),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 2.h,
                  //                   ),
                  //
                  //                   Text(options[index].carmodel,
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 14.sp
                  //                     ),
                  //                   ),
                  //                   options[index].carmodel == 'ALFA ROMEO Stelvio' ? Text("Automatic") : Text("Petrol"),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             height: 2.h,
                  //           ),
                  //
                  //         ],
                  //       );
                  //     }),

                ],
              ),
            ),
          ),
        )
    );
  }
}
