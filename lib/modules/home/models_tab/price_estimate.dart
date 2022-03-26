
import 'package:flutter/cupertino.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/textstyle/constants.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';

class PriceEstimate extends StatefulWidget {
  const PriceEstimate({Key? key}) : super(key: key);

  @override
  State<PriceEstimate> createState() => _PriceEstimateState();
}

class _PriceEstimateState extends State<PriceEstimate> {
  final _mno = TextEditingController();

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5.h,),
              Text('Your Price estimate is ready!',style: TxtStyleB,),
              SizedBox(height: 2.h,),
              Text('Enter your phone number to continue',style: TxtStyleG,),
              SizedBox(height: 2.h,),

              InkWell(
                onTap: (){},
                  child:
                    Container(
                      width: 85.w,
                      height: 8.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: whiteclr,
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(width: 0.3, color: Colors.black),

                      ),
                      child: TextFormField(
                        controller: _mno,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          prefixText: '+91 ',
                          border: InputBorder.none,
                        ),
                      ),
                    ),


                  ),
              SizedBox(height: 5.h,),

              CustomBlueButton(
                  onPressed: (){
                    
                  },
                  text: 'Done')

            ],
          ) ,
        ));
  }
}
