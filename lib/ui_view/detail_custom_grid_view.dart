import 'package:flutter/material.dart';

class DetailCustomGridView extends StatefulWidget {
  final String nama, gambar, keterangan;

  DetailCustomGridView(this.nama, this.gambar, this.keterangan);

  @override
  _DetailCustomGridViewState createState() => _DetailCustomGridViewState();
}

class _DetailCustomGridViewState extends State<DetailCustomGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nama),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 240,
            child: Hero(
              tag: widget.nama,
              child: Material(
                child: InkWell(
                  child: Image.asset(widget.gambar, fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          BagianNama(nama: widget.nama),
          BagianIcon(),
          BagianKeterangan(keterangan: widget.keterangan),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  final String nama;

  BagianNama({required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama,
                  style: TextStyle(fontSize: 20.0, color: Colors.green),
                ),
                Text(
                  "$nama@gmail.com",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star, size: 40.0, color: Colors.red),
              Text(
                "12",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconTeks(iconData: Icons.camera, teks: "Camera"),
          IconTeks(iconData: Icons.message, teks: "Pesan"),
          IconTeks(iconData: Icons.phone, teks: "Phone"),
        ],
      ),
    );
  }
}

class IconTeks extends StatelessWidget {
  final IconData iconData;
  final String teks;

  IconTeks({required this.iconData, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            size: 40.0,
            color: Colors.green,
          ),
          SizedBox(height: 5),
          Text(
            teks,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class BagianKeterangan extends StatelessWidget {
  final String keterangan;

  BagianKeterangan({required this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            keterangan,
            style: TextStyle(fontSize: 14.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
