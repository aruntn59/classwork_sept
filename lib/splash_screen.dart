///(13/09/2023)
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //to run an app
  runApp(MaterialApp(
    // default theme of our flutter app
    home: Splash_screen(), // initial page to be launched while running an app
  ));
}

class Splash_screen extends StatelessWidget {
  @override
  //to create our widget tree we use build function
  Widget build(BuildContext context) {
    //BuildContext - used to locate widgets on the widget tree and monitor their actions
    return  Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ///adding bult in icons
          /*  Icon(
              Icons.favorite,
              size: 80,
              color: Colors.red,
            ),*/
          ///adding external icons( flutter  asses it as image)
            ///asset image
            // Image(image: AssetImage("assets/icons/cam.png") ,width: 100,height: 100,),
            ///network image
            Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9gXafcOOst4_d2j2xbyZQGRTa2DohLC-EIFtkGs&s"),width: 100,height: 100,),
            Text(
              "My Application",

              //normal founts styleing
              /*

              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold),*/

              ///google fonts usesing style
              style: GoogleFonts.dancingScript(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold
              ),

            )
          ],
        ),
      ),
    );
  }
}