import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      theme: new ThemeData(
        primaryColor: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(title: Text('Wedding Ceremonies'),),
            ListTile(title: Text('Music Concerts'),),
            ListTile(title: Text('Conferences'),),
            ListTile(title: Text('Seminars'),),
            ListTile(title: Text('Birthday Parties'),),
            ListTile(title: Text('Thanksgivings'),),
            ListTile(title: Text('Fashion Shows'),),
            ListTile(title: Text('Award Ceremonies'),),
            ListTile(title: Text('Get Togethers'),),
            ListTile(title: Text('Seminars'),),
            ListTile(title: Text('Birthday Parties'),),
            ListTile(title: Text('Seminars'),),
            ListTile(title: Text('Get Togethers'),),
            ListTile(title: Text('Thanksgivings'),),
            ListTile(title: Text('Fashion Shows'),),
            ListTile(title: Text('Music Concerts'),),


          ],

        ),
      ),
    );
  }
}

  Widget title(){
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context,i ){
          if (i.isOdd) return Divider();

          final index = i ~/ 2;


        }

    );
  }