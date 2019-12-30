import 'package:flutter/material.dart';

class SuraDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuraDetailsPageState();
  }
}

class _SuraDetailsPageState extends State<SuraDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('সূরা আল ফাতিহা'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
