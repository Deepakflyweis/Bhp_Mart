

import 'package:kunal_app/modules/login/login_screen.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
import 'package:kunal_app/widgets/utility/cutom_blue_button.dart';

import '../../essentials/essentials_files.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteclr,
      body: SafeArea(
          child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/images/logo.png",
              height: 40.h,
             ),
             SizedBox(height: 10.h,),
             CustomBlueButton(
               text:  "Get start",
               onPressed: (){
                 Get.offAll(()=> LoginScreen());
               },
             )

           ],
         ),
      )),

    );
  }
}