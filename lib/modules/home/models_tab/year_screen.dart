
import 'package:flutter/cupertino.dart';

class YearScreen extends StatelessWidget {
  const YearScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          Text('2022'),
          Text('2021'),
          Text('2020'),
          Text('2019'),
          Text('2018'),
          Text('2018'),
          Text('2017'),
          Text('2016'),
          Text('2015'),
          Text('2014'),
          Text('2013'),
        ],
      ),
    );
  }
}
