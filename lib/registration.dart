import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

// void main() {
//   runApp(MaterialApp(
//     home: registration(),
//   ));
// }


class registration extends StatelessWidget {
  const registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Registration"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 80,
                color: Colors.red,
              ),
              // Image.asset("assets/icons/cam.png",height: 100,width: 100,),
              Text("Registration ",style: GoogleFonts.cabin( fontSize: 35,fontWeight:FontWeight.bold,color: Colors.orange),),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      helperText: 'Name',
                      // prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 15),
              //   child: TextField(
              //     decoration: InputDecoration(
              //         hintText: "Age",
              //         labelText: "Age",
              //         helperText: 'Age',
              //         // prefixIcon: Icon(Icons.old),
              //         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "UserName",
                      labelText: "UserName",
                      helperText: 'UserName Must be an Email',
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Contact number",
                      labelText: "Contact number",
                      helperText: 'UserName Must be an mob',
                      prefixIcon: Icon(Icons.mobile_friendly),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "PassWord",
                      labelText: "PassWord",
                      helperText: 'Password Must Contain 6 characters',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "confirm PassWord",
                      labelText: "confirm PassWord",
                      helperText: 'Password Must be same characters',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                  ),
                ),
              ),


              ElevatedButton(onPressed: (){  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login()));}, child: Text("Register")),
              // SizedBox( height: 10,),
              //  TextButton(onPressed: (){}, child: Text("Not user? SingUp here!")),`
            ],
          ),
        ),
      ),
    );
  }
}
