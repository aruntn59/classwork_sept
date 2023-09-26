import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: anima(),));
}

class anima extends StatelessWidget {
  const anima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animations/Animation - 1695876243896.json"),
      ),
    );

  }
}
