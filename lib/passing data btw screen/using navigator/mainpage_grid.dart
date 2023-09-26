import 'package:classwork_sept/passing%20data%20btw%20screen/using%20navigator/dummydata.dart';
import 'package:flutter/material.dart';

class pass_main_grid extends StatelessWidget {
  // const main_grid_pass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products"),),

    body:GridView(
      padding: EdgeInsets.all(15),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: products.map((product)=>InkWell()),

    ),
    );

  }
}
