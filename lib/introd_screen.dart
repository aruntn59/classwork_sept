import 'package:classwork_sept/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main() {
  runApp(MaterialApp(
    home: intro_screen(),
  ));
}
class intro_screen extends StatelessWidget {
  const intro_screen({super.key});

  @override
  Widget build(BuildContext context) {
  PageDecoration derationpagete_object=PageDecoration(
    titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.lightGreen,),
    bodyTextStyle:TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.lightGreen,),
    boxDecoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.blue],begin: Alignment.bottomLeft,end: Alignment.topRight)),
    imageFlex: 6
  );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration:derationpagete_object ,
          title: '1st page',
          body: 'endhygillum oru discription in body',
          image:IntroImage("https://images.unsplash.com/photo-1696650811922-9a14bf80be8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
        ),
        PageViewModel(
          decoration:derationpagete_object ,
          title: '2st page',
          body: 'endhygillum oru discription in body',
          image:IntroImage("https://plus.unsplash.com/premium_photo-1695758787352-90c6ad0cb516?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1946&q=80"),
        ),
        PageViewModel(
        decoration:derationpagete_object ,
          title: '3st page',
          body: 'endhygillum oru discription in body',
          image: IntroImage("https://images.unsplash.com/photo-1692317799558-ee4ce64d3c9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
        ),
      ],
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SplashPage())),
      onDone:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SplashPage())),
      showSkipButton: true,
      skip: Text('Skip'),
      // ShowBackButton:true,// backbutton skip orumich kodukkan kazhiyilla
      // back: Text('Back'),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator:DotsDecorator(
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
    size:Size(12,10),
    activeSize: Size(22,10),
    activeColor: Colors.green),
    );
  }
}

Widget IntroImage(String imgpath) {
  return Align(
  alignment:Alignment.topCenter,
  child:Image.network(imgpath,width:double.infinity,)
  );
}
