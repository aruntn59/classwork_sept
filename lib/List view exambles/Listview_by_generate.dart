import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView2(),));
}

class ListView2 extends StatelessWidget {
  var title = [
    'Data1',
    'Data2',
    'Data3',
    'Data4',
    'Data5',

  ];
  var subti = [20, 30, 40, 50, 100,];
  var images = [
    "assets/photos/chad-montano--GFCYhoRe48-unsplash.jpg",
    "assets/photos/dovile-ramoskaite-xX9SmqQCbFY-unsplash.jpg",
    "assets/photos/eiliv-aceron-mwbjyRUTlIQ-unsplash.jpg",
    "assets/photos/eiliv-aceron-ZuIDLSz3XLg-unsplash.jpg",
    "assets/photos/taylor-kiser-EvoIiaIVRzU-unsplash.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView useing generate "),
      ),
      body: ListView(
        children: List.generate(5, (index) =>
            Card(
              child: ListTile(
                title: Text(title[index]),
                subtitle: Text('${subti[index]}'),
                leading: Image.asset(images[index]),// to chage shape and fix size we have to wrap widget and use circle avathar
                  // trailing:Icon(Icons.shopping_cart),//
                  trailing:IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart),)
              ),
            )),
      ),
    );
  }
}