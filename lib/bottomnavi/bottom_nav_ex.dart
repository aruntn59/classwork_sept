import 'package:flutter/material.dart';

import '../List view exambles/listvie_bulider.dart';
import '../Wwidgets/Anima.dart';
import '../Wwidgets/fi_card_use_stack.dart';
import '../Wwidgets/rive_Anima.dart';
import '../Wwidgets/rive_Anima_network.dart';
import '../grid_view/Gridview3.dart';
void main(){
  runApp(MaterialApp(home: botttomnav(),));
}
class botttomnav extends StatefulWidget {
  const botttomnav({super.key});

  @override
  State<botttomnav> createState() => _botttomnavState();
}

class _botttomnavState extends State<botttomnav> {
  int index=0;
  var screens=[
    anima(),
    Grid_C(),
    ListView_Builder(),
    SimpleAnimation(),
    rive_anim()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,

        backgroundColor: Colors.green,
        selectedItemColor: Colors.purple,
        currentIndex: index,
        onTap: (tapedindex){
          setState(() {
            index=tapedindex;//here index value  chanege according to each tap
          });
        },

        items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
            icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.search_rounded),label: "Search"),
        BottomNavigationBarItem(backgroundColor: Colors.orangeAccent, icon: Icon(Icons.message),label: "messages"),
        BottomNavigationBarItem(backgroundColor: Colors.yellow, icon: Icon(Icons.account_box),label: "profile"),
        BottomNavigationBarItem(backgroundColor: Colors.yellow, icon: Icon(Icons.play_circle),label: "Veruthy"),
      ],),
      body: screens[index],
    );
  }
}
