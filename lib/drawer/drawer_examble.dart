import 'package:flutter/material.dart';

import '../Wwidgets/fi_card_use_stack.dart';
import '../Wwidgets/home_pro.dart';
void main(){
  runApp(MaterialApp(home: drawerexamble(),));
}
class drawerexamble extends StatelessWidget {
  const drawerexamble({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text("my Drawer"),),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [Colors.green,Colors.white])
          ),
      child:ListView(
            children: [UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              //     image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wqHW?ver=f338"))
              ),
              accountName: Text("Arun"), accountEmail: Text("Arun@gmail.com"),
              currentAccountPicture:CircleAvatar(backgroundImage:AssetImage("assets/images/person.jpeg"),),
              // otherAccountsPictures: [
              //   CircleAvatar(backgroundImage:AssetImage("assets/images/orange.png"),),
              //   CircleAvatar(backgroundImage:AssetImage("assets/images/hamburger.png"),),
              // ],
            ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text('Dashboard'),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
                onTap: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>home_pro()));},
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text('Leads'),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
              ListTile(
                leading: Icon(Icons.work_history_rounded),
                title: Text('WorkFlow'),
              ),
              ListTile(
                leading: Icon(Icons.park_rounded),
                title: Text('Notification'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              )


            ],

          ),
        ),
      ),

    );
  }
}
