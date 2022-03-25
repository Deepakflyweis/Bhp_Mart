
import 'package:flutter/material.dart';
import 'package:kunal_app/essentials/essentials_files.dart';
import 'package:kunal_app/widgets/app_color/app_color.dart';
//
// class HomeIndex extends StatefulWidget {
//   final int index;
//
//     HomeIndex( int this.index)  ;
//
//   @override
//   State<HomeIndex> createState() => _HomeIndexState(index);
// }
//
// class _HomeIndexState extends State<HomeIndex> {
//
//   int? _currentIndex;
//   final int index;
//
//   _HomeIndexState(this.index);
//
//   int _currentPage = 0;
//   var isProfilePage = true;
//
//   @override
//   initState() {
//
//     super.initState();
//     _currentPage = index;
//
//
//   }
//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   List<Widget> navigationPage = [
//     CarpoolScreen(),
//     HistoryScreen(),
//     ChatScreen(),
//
//
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           backgroundColor: btngrey,
//           body: navigationPage.elementAt(_currentPage),
//           bottomNavigationBar: _createBottomNavigationBar(),
//         ));
//   }
//
//   Widget _createBottomNavigationBar() {
//     return  BottomNavigationBar(
//       // showUnselectedLabels: false,
//
//       type: BottomNavigationBarType.fixed,
//       unselectedItemColor: Colors.black87,
//       backgroundColor: Colors.white,
//       onTap: (int num) {
//         _currentPage = num;
//
//         setState(() {
//           isProfilePage = _currentPage == 0 ? true : false;
//
//         });
//       },
//       showSelectedLabels: true,
//       currentIndex: _currentPage,
//       items: const [
//
//
//         BottomNavigationBarItem(
//             icon:Icon(Icons.directions_car_outlined,size: 30,),
//             label:'BUY CAR',
//             backgroundColor: Colors.black12
//         ),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.timelapse_sharp,size: 30,),
//             label: 'SELL CAR',
//             backgroundColor: Colors.black12
//         ),
//
//         BottomNavigationBarItem(
//             icon: Icon(Icons.chat,size: 30, ),
//             label: 'MENU',
//             backgroundColor: Colors.black12
//         ),
//
//
//
//       ],
//     );
//   }
// }


class HomeIndex extends GetxController{
  PageController pageController = PageController();
  RxInt pageIndex = 0.obs;
  List<Widget> pages = [
    // GroceryNestedNavigator(),
    // SnacksAndDrinksView(),
    // FruitsAndVegetablesView()
  ];
}