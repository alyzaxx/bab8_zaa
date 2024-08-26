import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Grid View'),
        backgroundColor: Colors.amber,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(12, (index) {
          int nIndex = index + 1;
          String dataIndex = "$nIndex";
          return Center(
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.amber,
              height: 100.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Data Ke - $dataIndex',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
