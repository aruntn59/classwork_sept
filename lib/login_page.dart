import 'package:classwork_sept/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
// void main() {
//   runApp(MaterialApp(
//     home: login(),
//   ));
// }
class login extends StatelessWidget {
  // const login({super.key});
String username ="admin@gmail.com";
String password="admin000";

final uname_controller= TextEditingController();
final pass_controller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title:Text("login"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("assets/icons/cam.png",height: 100,width: 100,),
            Text("Orange Cam",style: GoogleFonts.cabin( fontSize: 35,fontWeight:FontWeight.bold,color: Colors.orange),),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                controller:uname_controller,
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
              padding: const EdgeInsets.only(bottom: 15),
              child: TextField(
                obscureText: true,//hide password
                obscuringCharacter: '*',
                controller:pass_controller,
                decoration: InputDecoration(
                    hintText: "PassWord",
                    labelText: "PassWord",
                    helperText: 'Password Must Contain 6 characters',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                ),
              ),
            ),


            ElevatedButton(onPressed: (){
              if (username ==uname_controller.text && password==pass_controller.text){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Home()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid  username /password or emity'),
                backgroundColor: Colors.red,
                ));

              }
            }, child: Text("login")),
            SizedBox( height: 10,),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> registration()));
            }, child: Text("Not user? SingUp here!")),
          ],
        ),
      ),
    );
  }
}
