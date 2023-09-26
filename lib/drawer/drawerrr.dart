import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawer(),));
}
class drawer extends StatelessWidget {
  // const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   appBar:AppBar(title: const Text("my Drawer"),),
    drawer: Drawer(child: ListView(
      children: [UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4wqHW?ver=f338"))
        ),
        accountName: Text("Arun"), accountEmail: Text("Arun@gmail.com"),
        currentAccountPicture:CircleAvatar(backgroundImage:AssetImage("assets/images/person.jpeg"),),
        otherAccountsPictures: [
          CircleAvatar(backgroundImage:AssetImage("assets/images/orange.png"),),
          CircleAvatar(backgroundImage:AssetImage("assets/images/hamburger.png"),),
        ],
      ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('Favorite'),
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

    ),),
    );
  }
}
