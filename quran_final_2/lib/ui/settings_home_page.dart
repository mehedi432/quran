import 'package:flutter/material.dart';

class SettingsHomePage extends StatefulWidget {
  @override
  _SettingsHomePageState createState() => _SettingsHomePageState();
}

class _SettingsHomePageState extends State<SettingsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.format_size),
              title: Text('Increase font size'),
              trailing: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.format_size),
              title: Text('Increase font size'),
              trailing: Icon(Icons.person),
            ),
          ),
        ],
      )),
    );
  }
}
