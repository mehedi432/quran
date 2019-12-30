import 'package:flutter/material.dart';

class SurasHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[377],
      appBar: AppBar(
        title: Text(
          'সূরা সমূহ',
          textDirection: TextDirection.ltr,
          style: TextStyle(letterSpacing: 1.6, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 13),
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.nature),
              trailing: Icon((Icons.arrow_downward)),
              title: Text('১ সূরা আল ফতিহা'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.nature),
              trailing: Icon((Icons.arrow_downward)),
              title: Text('২  সূরা আল বারাক্কাহ'),
            ),
          )
        ],
      ),
    );
  }
}
