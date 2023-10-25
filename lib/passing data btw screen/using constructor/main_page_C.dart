import 'package:classwork_sept/passing%20data%20btw%20screen/using%20constructor/to_state_less_page.dart';
import 'package:classwork_sept/passing%20data%20btw%20screen/using%20constructor/to_statefull%20page.dart';
import 'package:flutter/material.dart';

import '../using navigator/dummydata.dart';


void main() {
  runApp(MaterialApp(
    home: MainPage2(),
  ));
}

class MainPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Passing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                        DataStateless(
                            name: "Luminar",
                            location: "Kakkanad",
                            phone: 98765432,
                            img : products[0]['image']))),
                child: const Text('To StateLess')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                        DataStateful(
                            name: "Luminar",
                            location: "Kakkanad",
                            phone: 98765432,
                            img : products[3]['image']))),
                child: const Text('To StateFul')),
          ],
        ),
      ),
    );
  }
}