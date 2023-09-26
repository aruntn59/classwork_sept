///grid view count
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Grid_C(),));
}

class Grid_C extends StatelessWidget {
  // const Grid_C({super.key});
  // var title = [
  //   'Data1',
  //   'Data2',
  //   'Data3',
  //   'Data4',
  //   'Data5',
  //
  // ];
  // var subti = [20, 30, 40, 50, 100,];
  var images = [
    "assets/images/bananas.png",
    "assets/images/bibimbap.png",
    "assets/images/donut.png",
    "assets/images/grapes.png",
    "assets/images/hamburger.png",
    "assets/images/orange.png",
    "assets/images/pineapple.png",
    "assets/images/pizza.png",
    "assets/images/ramen.png",
    "assets/images/salad.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount:3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children:List.generate(10,

                (index) => Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  color: Colors.primaries[index % Colors.primaries.length],),
                  child:Column(
                    children: [
                      Image.asset(images[index],height: 100,),
                      const Text("food1",
                      style:TextStyle(fontSize:20),),
                      const Text("40\$",
                        style:TextStyle(fontSize:20),),

                    ],
                  ),

                ),

      )
      )


    );
  }
}
