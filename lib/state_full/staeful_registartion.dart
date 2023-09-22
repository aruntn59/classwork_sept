
import 'package:classwork_sept/state_full/stateful_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reg_stateful extends StatefulWidget {
  @override
  State<Reg_stateful> createState() => _Reg_statefulState();
}

class _Reg_statefulState extends State<Reg_stateful> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  bool passwordhidden=true;//this mean password  is hidden
  bool cpasswordhidden=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
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
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Username'),
                  ///here the value entered at text form field will stored at uname
                  validator: (uname) {
                    if (uname!.isEmpty ||
                        !uname.contains('@') ||
                        !uname.contains('.com')) {
                      return 'username must not be empty/ or invalid';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone Number'),
                  validator: (num) {
                    if (num!.isEmpty || num.length != 10) {
                      return 'Phone number should have 10 digits/ field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscuringCharacter: "*",//password hide cheyuna charater
                  obscureText: passwordhidden, //endha venday hidenayyi irrikya first time

                  validator: (password) {
                    pass = password;
                    if (password!.isEmpty || password.length < 6) {
                      return 'Password must not be empty/ password length must be > 6';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {               // setState is used to work a particular task like show password
                              if(passwordhidden == true){//in statefull page. bakki task onum projectll ee pagese change varanda kryam illa
                                passwordhidden = false;   //so we use setste ee property staefull mathra kittolu
                              }else{
                                passwordhidden = true;
                              }
                            });
                          },
                          icon: Icon(passwordhidden == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(),
                      hintText: 'Password'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscuringCharacter: "*",//password hide cheyuna charater
                  obscureText: cpasswordhidden,

                  validator: (cpassword) {
                    if (cpassword!.isEmpty || cpassword != pass) {
                      return 'Password must be same/ field must not be empty';
                    } else {
                      return null;
                    }
                  },
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if(cpasswordhidden == true){
                                cpasswordhidden = false;
                              }else{
                                cpasswordhidden = true;
                              }
                            });
                          },
                          icon: Icon(cpasswordhidden == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(),
                      hintText: 'Password'),
                ),
              ),
              ElevatedButton(onPressed: () {
                final valid= formkey.currentState!.validate();
                if(valid) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login_stateful()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("invalid data")));
                }
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}