import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.green),//change the enter color or them of the app
    home: listview1(),));}
class listview1 extends StatelessWidget {
  const listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view basic"),
      ),
      body: ListView(
        children: [
          Text('product 1'),//normal list
          Text('product 2'),
          Card(child: Text('product 3'),color:Colors.cyan,),//when we wrap with a widget and make that to a card,
          Card(child: Text('product 3'),color:Colors.cyan,),/* when we wrap with a widget and make that to a card,
                                           igane cheyubho texte same size ll ayirikkum
                                            show cheyukka so thats why we use a ListTile*/
          Card(child: ListTile(
            tileColor: Colors.yellow,
            leading: Icon(Icons.person),//to add image or icon in leading postion
            title:Text('person1'),      // toa ad main text
            subtitle: Text('hello'),    //to add subtitle
            trailing: Text('10am'),     //to add time or read cheytho ennoke kannikuna area
          )),
                                          /*when we wrap with a widget and make that to
                                           a card and also add a ListTile,
                                           listtiles enna widgetll  childers
                                            alla athite propertys aa use cheyune oro widgets different aanu
                                           */
          Card(child: ListTile(
            tileColor: Colors.yellow,
            leading: Image.asset("assets/images/bg.jpg"),//to add image or icon in leading postion
            title:Text('person1'),      // toa ad main text
            subtitle: Text('hello'),    //to add subtitle
            trailing: Text('10am'),     //to add time or read cheytho ennoke kannikuna area
          )),
                                          /*to add image or icon in leading postion,
                                          and make in circle view we have use image provieder
                                          image provider calling time we have to add asset image daractly*/
          Card(child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/images/bg.jpg")),//cirlcleAva for clercle th dp
            title:Text('person1'),      // toa ad main text
            subtitle: Text('hello'),    //to add subtitle
            trailing: Text('10am'),     //to add time or read cheytho ennoke kannikuna area
          )),


          Card(child: Text('product 8'),color:Colors.cyan,),

          Card(child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/images/bg.jpg")),//cirlcleAva for clercle th dp
            title:Text('person1'),      // toa ad main text
            subtitle: Text('hello'), //to add subtitle
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 12,
                  backgroundColor: Colors.teal,
                  child: Text('2'),
                  // child:Icon(Icons.person),
                )
              ],
            ),
          )),
            /*to add time or read cheytho ennoke kannikuna area
                                          trailing are ll athra msg read cheyan ind seen cheytho ennoke add cheyan
                                           ithine oru widget vechu kond wrp cheyth athine coloms ayyi devide cheythu
                                           oronu ornu ayyi adcheyunu*/
          Card(child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/images/bg.jpg")),//cirlcleAva for clercle th dp
            title:Text('person1'),      // toa ad main text
            subtitle: Row(
              children: [
                Icon(Icons.read_more),
                Text("This is a sample subtitle"),
              ],
            ), //to add subtitle
            trailing: Text('10am'),
          )),

        ],
      ),
    );
  }
}
