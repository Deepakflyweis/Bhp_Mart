
import 'package:flutter/cupertino.dart';
import 'package:kunal_app/essentials/essentials_files.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),

          itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                // child: SearchTextFeild(label: searchForYourFavourites),
              ),
              Obx(() => Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      height: 50,
                      width: 100,
                      fit: BoxFit.fitHeight,) ,),

                  GestureDetector(
                    child: Image.asset('assets/images/honda.png',
                      height: 50,
                      width: 100,
                      fit: BoxFit.fitHeight,) ,),

                  GestureDetector(
                    child: Image.asset('assets/images/toyata.png',
                      height: 50,
                      width: 100,
                      fit: BoxFit.fitHeight,) ,),
                ],
              )),

            ],

          );
        }
          )


      ),
    );
  }
}


