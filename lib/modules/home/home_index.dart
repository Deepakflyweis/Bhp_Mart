
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/modules/car_details/home_buy_screen.dart';
import 'package:kunal_app/modules/profile/my_profile.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';

import 'brand.dart';

class HomeIndex extends StatefulWidget {
  final int index;

    HomeIndex( int this.index)  ;

  @override
  State<HomeIndex> createState() => _HomeIndexState(index);
}

class _HomeIndexState extends State<HomeIndex> {

  int? _currentIndex;
  final int index;

  _HomeIndexState(this.index);

  int _currentPage = 0;
  var isProfilePage = true;

  @override
  initState() {

    super.initState();
    _currentPage = index;


  }
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> navigationPage = [
    HomeBuyScreen(),
    BrandScreen(),
    MyProfile(),


  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: btngrey,
          body: navigationPage.elementAt(_currentPage),
          bottomNavigationBar: _createBottomNavigationBar(),
        ));
  }

  Widget _createBottomNavigationBar() {
    return  BottomNavigationBar(
      // showUnselectedLabels: false,

      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.grey[500],
      onTap: (int num) {
        _currentPage = num;

        setState(() {
          isProfilePage = _currentPage == 0 ? true : false;

        });
      },
      showSelectedLabels: true,
      currentIndex: _currentPage,
      items: const [

        BottomNavigationBarItem(
            icon:Icon(Icons.directions_car_outlined,size: 25,),
            label:'BUY CAR',
            backgroundColor: Colors.black12
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_hockey,size: 25,),
            label: 'SELL CAR',
            backgroundColor: Colors.black12
        ),

        BottomNavigationBarItem(
            icon: Icon(Icons.menu,size: 25, ),
            label: 'MENU',
            backgroundColor: Colors.black12
        ),



      ],
    );
  }
}


// class HomeIndex extends GetxController{
//   PageController pageController = PageController();
//   RxInt pageIndex = 0.obs;
//   List<Widget> pages = [
//     // GroceryNestedNavigator(),
//     // SnacksAndDrinksView(),
//     // FruitsAndVegetablesView()
//   ];
// }