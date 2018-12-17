import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeGrid(),
    );
  }
}

class HomeGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeGridState();
  }
}
class _HomeGridState extends State<HomeGrid> {
  int _currentIndex = 1;
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;

    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Padding (
        padding: const EdgeInsets.all(8.0),
        child: new StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index)=> new Container (
              color: Colors.pink,
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text ('$index'),
                ),
              ),
              ),
            staggeredTileBuilder: (int index)=>
                new StaggeredTile.count(2, index.isEven ? 2: 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.store_mall_directory),
            title: new Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          )

        ],

      ),
    );
  }
}

