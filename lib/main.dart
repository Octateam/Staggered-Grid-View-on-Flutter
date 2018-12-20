import 'package:flutter/material.dart';
import 'package:staggered_grid/HomePage.dart';
import 'package:staggered_grid/Cart.dart';
import 'package:staggered_grid/Explore.dart';
import 'package:staggered_grid/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // Creating a Tab Controller
  TabController controller;

  @override
  void initState (){
    //new state();
    super.initState();

    // Initializing the Tab Controller
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose (){
    // Dispose the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar (),
      body: new TabBarView(
        // Add tabs as Widgets
        children: <Widget>[
          new Cart(),
          new HomePage(),
          new Explore(),
          new Profile(),
        ],
        // set the controller
        controller: controller,
      ),
      // set bottom navigation bar
      bottomNavigationBar: new Material (
        child: new TabBar(
          tabs: <Tab> [
            new Tab (icon: new Icon(Icons.home)),
            new Tab (icon: new Icon(Icons.store_mall_directory)),
            new Tab (icon: new Icon(Icons.shopping_cart)),
            new Tab (icon: new Icon(Icons.person)),
          ],
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.blueGrey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.pink,
          indicatorPadding: EdgeInsets.all(5.0),
          // set up indicator "again" (Still dont get why we dispose the controller and stoill call it back again)
          controller: controller,
        ),
      ),
    );
  }
}
