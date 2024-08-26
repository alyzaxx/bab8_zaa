import 'package:flutter/material.dart';

class ListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Horizontal'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
//margin : jarak antar widget
// padding : jarak di dalam objek
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
// vertical kebawah
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.orange,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
