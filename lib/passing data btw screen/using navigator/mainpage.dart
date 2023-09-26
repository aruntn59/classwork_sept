import 'package:classwork_sept/passing%20data%20btw%20screen/using%20navigator/dummydata.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: pass_main(),));
}
class pass_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: products.map((product) => ListTile(
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(product['image'])
                )
            ),
          ),
          title: Text(product["name"]),
          subtitle: Text('${product['price']}\$'),
        )).toList(),
      ),
    );
  }
}
