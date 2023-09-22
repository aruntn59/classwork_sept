///(14/09/2023)
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //to run an app
  runApp(MaterialApp(
    // default theme of our flutter app
    home: SplashPage(), // initial page to be launched while running an app
  ));
}

class SplashPage extends StatelessWidget {
  @override
  //to create our widget tree we use build function
  Widget build(BuildContext context) {
    //BuildContext - used to locate widgets on the widget tree and monitor their actions
    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: Container(
        decoration: BoxDecoration(

            ///background color
            // color: Colors.black

          ///linerGradient
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Colors.deepOrange,
                  Colors.orange,
                  Colors.yellow,
                  Colors.white,
                ])

            ///backhround image
            /*image: DecorationImage(
            fit: BoxFit.cover,
               image: NetworkImage("https://images.unsplash.com/photo-1687360440667-493016988a1a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")
              // image:AssetImage("assets/images/bg.jpg")
             )*/


        ),
        child: Center(
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
              Image(
                image: AssetImage("assets/icons/cam.png"),
                width: 100,
                height: 100,
              ),

              ///network image
              // Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY9gXafcOOst4_d2j2xbyZQGRTa2DohLC-EIFtkGs&s"),width: 100,height: 100,),
              Text(
                "Orange Cam",

                //normal founts styleing
                /*

                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),*/

                ///google fonts usesing style
                style: GoogleFonts.dancingScript(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
