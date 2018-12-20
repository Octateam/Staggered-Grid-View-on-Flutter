import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(2, 1),

];

List<Widget> _tiles = const <Widget>[
  const _ExploreTile(Colors.green, Icons.widgets, Text("wedding Ceremonies"),),
  const _ExploreTile(Colors.lightBlue, Icons.wifi, Text("Birthday Parties"),),
  const _ExploreTile(Colors.amber, Icons.panorama_wide_angle, Text("Seminars"),),
  const _ExploreTile(Colors.brown, Icons.map, Text("Conferences"),),
  const _ExploreTile(Colors.deepOrange, Icons.send, Text("Award Ceremonies"),),
  const _ExploreTile(Colors.indigo, Icons.airline_seat_flat, Text("Thanksgivings"),),
  const _ExploreTile(Colors.red, Icons.bluetooth, Text("Fashion Shows"),),

];

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Example 01'),
        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 2,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _ExploreTile extends StatelessWidget {
  const _ExploreTile(this.backgroundColor, this.iconData, this.text);

  final Color backgroundColor;
  final IconData iconData;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}