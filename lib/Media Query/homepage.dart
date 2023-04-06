import 'package:flutter/material.dart';
import 'Desktop body.dart';
import 'mobile body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // !
    var deviceWidth = MediaQuery.of(context).size.width;
    // !
    if (deviceWidth < 600) {
      return  const Mydesktopbody();
    } else {
      return const Desktop();
    }
  }
}
