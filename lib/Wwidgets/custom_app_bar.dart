import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../List view exambles/Listview_by_generate.dart';
import '../List view exambles/basic_list_view.dart';
import '../List view exambles/listvie_bulider.dart';
import '../List view exambles/listvie_separator.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppBar1(),
  ));
}

class AppBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whats App"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15,),
            Icon(Icons.search_off_rounded),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("new Brodcast")),
                PopupMenuItem(child: Text("new Group")),
              ];
            })
          ],
          bottom:PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height), child: Container(
            child: TabBar(
              tabs: [
                Tab(icon: FaIcon(Icons.supervised_user_circle),),
                Tab(text: "Chat"),
                Tab(text: "Status"),
                Tab(text: "Calls"),
              ],
            ),
          )) ,
        ),
        body: TabBarView(children: [
          listview1(),
          ListView_Builder(),
          ListView_Separated(),
          ListView2(),


        ]),

      ),
    );
  }
}
