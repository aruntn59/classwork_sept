import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.green),//change the enter color or them of the app
    home: list_cu(),));}
class list_cu extends StatelessWidget {
  const list_cu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Card(child: Icon(Icons.account_balance),),
        Card(child: Icon(Icons.account_balance),),
        Card(child: Icon(Icons.account_balance),),
        Card(child: Icon(Icons.account_balance),),
      ])

      ),
    );
  }
}
