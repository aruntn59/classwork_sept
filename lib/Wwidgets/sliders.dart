import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Anima.dart';
import 'fi_card_use_stack.dart';
void main(){
  runApp(MaterialApp(home: ca_sliders(),));
}

class ca_sliders extends StatelessWidget {
  const ca_sliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body:Column(
        children: [
          CarouselSlider(items: [
             InkWell(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>FiCard()));},
            child:Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit:BoxFit.cover,
                      image:NetworkImage("https://images.unsplash.com/photo-1691495257420-bc31c53097f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"))),
            ),
             ),

            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit:BoxFit.cover,
                      image:NetworkImage("https://images.unsplash.com/photo-1696430579543-093cf7225668?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"))),

            ),

            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit:BoxFit.cover,
                      image:NetworkImage("https://images.unsplash.com/photo-1688423078333-b9ba7d9ab7b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1947&q=80"))),
            ),
          ], options: CarouselOptions(autoPlay: true,
              viewportFraction: .4,//athra images kannikyanum ennu kannikyan
              height:200,
              enlargeCenterPage: true,// kurach onu bulge cheyth nikkan
              enableInfiniteScroll:true,
              autoPlayCurve: Curves.easeIn,
            autoPlayAnimationDuration: Duration(seconds: 3)
          ))
        ],
      ),
    );
  }
}
