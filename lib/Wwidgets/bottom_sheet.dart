import 'package:flutter/material.dart';

class btm_sheet extends StatelessWidget {
  const btm_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Column(
          children: [
      child:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit:BoxFit.cover,
                image:NetworkImage("https://images.unsplash.com/photo-1691495257420-bc31c53097f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"))),
      ),
   ] ),
    );

  }
}
