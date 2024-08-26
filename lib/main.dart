import 'package:bab8_zaa/ui_view/simple_grid_view.dart';
import 'package:flutter/material.dart';
import 'ui_view/page_basic_list.dart';
import 'ui_view/list_horizontal.dart';
import 'ui_view/custom_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              label: 'Simple List',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageBasicList()),
                );
              },
            ),
            CustomButton(
              label: 'Horizontal List',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListHorizontal()),
                );
              },
            ),
            CustomButton(
              label: 'Simple Grid',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleGridView()),
                );
              },
            ),
            CustomButton(
              label: 'Custom Grid',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomGridView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  CustomButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.red,
        textColor: Colors.white,
        child: Text(label),
      ),
    );
  }
}
