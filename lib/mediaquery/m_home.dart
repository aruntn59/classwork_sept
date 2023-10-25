/*resposive ayy screens create cheyan usecheyunu! ie mob screen yv screens ok same ayyi usecheyan !
big screenillum short screenillum varuna youtube difference illa athu thane*/
import 'package:flutter/material.dart';

import 'bigscreen.dart';
import 'mobileScreen.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600) {
      return MobileScreen();
    } else {
      return BigScreen();
    }
  }
}
