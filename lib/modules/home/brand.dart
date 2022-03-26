
import 'package:flutter/cupertino.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/modules/profile/my_profile.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);


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
        body: Container(
          height: 1000,
          padding: const EdgeInsets.all(15.0),
          child: ListView (
            children: [

              SizedBox(height: 2.h,),
              Text('Let’s Start With your Car Brand',style: TxtStyleB,),
              
              SizedBox(height: 2.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              // TabWidget(
              //     title: grocery,
              //     image: "assets/images/grocery.png",
              //     index: 0,
              //     currentIndex: controller.pageIndex.value),
              // TabWidget(
              //     title: snacksAndDrinks,
              //     image: "assets/images/snacks.png",
              //     index: 1,
              //     currentIndex: controller.pageIndex.value),
              // TabWidget(
              //     title: fruitsAndVeggies,
              //     image: "assets/images/veggies.png",
              //     index: 2,
              //     currentIndex: controller.pageIndex.value),

              GestureDetector(
                child: Image.asset('assets/images/maruti.png',
                  height: 90,
                  width: 100,
                  fit: BoxFit.fitWidth,) ,),
              SizedBox(width: 2.w,),

              GestureDetector(
                child: Image.asset('assets/images/honda.png',
                  height: 90,
                  width: 100,
                  fit: BoxFit.fitHeight,) ,),
              SizedBox(width: 2.w,),

              GestureDetector(
                child: Image.asset('assets/images/toyata.png',
                  height: 90,
                  width: 100,
                  fit: BoxFit.fitHeight,) ,),
            ],
          ),

            SizedBox(height: 2.h,),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          )

            ],


            ),
        )


      ),
    );
  }
}


