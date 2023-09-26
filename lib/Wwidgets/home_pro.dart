import 'package:flutter/material.dart';


class home_pro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('DashBoard'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1673697239984-b089baf7b6e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8fDB8fHww&w=1000&q=80"))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pradeep Prakash",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
          ),
          const Expanded(
            child:  SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("""
                 In January 2001, Wikipedia began as a side-project of Nupedia, to allow collaboration on articles prior to entering the peer-review process. The name was suggested by Sanger on 11 January 2001 as a portmanteau of the words wiki (Hawaiian for "quick") and encyclopedia.
                  In January 2001, Wikipedia began as a side-project of Nupedia, to allow collaboration on articles prior to entering the peer-review process. The name was suggested by Sanger on 11 January 2001 as a portmanteau of the words wiki (Hawaiian for "quick") and encyclopedia.
                   In January 2001, Wikipedia began as a side-project of Nupedia, to allow collaboration on articles prior to entering the peer-review process. The name was suggested by Sanger on 11 January 2001 as a portmanteau of the words wiki (Hawaiian for "quick") and encyclopedia.
                    In January 2001, Wikipedia began as a side-project of Nupedia, to allow collaboration on articles prior to entering the peer-review process. The name was suggested by Sanger on 11 January 2001 as a portmanteau of the words wiki (Hawaiian for "quick") and encyclopedia.
                """),
              ),
            ),
          )
        ],
      ),
    );
  }
}