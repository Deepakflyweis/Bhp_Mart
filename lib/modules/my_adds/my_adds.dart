
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kunal_app/modules/car_details/car_details.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:sizer/sizer.dart';

class MyAdds extends StatefulWidget {
  const MyAdds({Key? key}) : super(key: key);

  @override
  State<MyAdds> createState() => _MyAddsState();
}

class _MyAddsState extends State<MyAdds> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios,
                  size: 25.sp,color: blckclr,)),
            title: Text('My Advertisement',style: TxtStyleB,),
            backgroundColor: whiteclr,
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
