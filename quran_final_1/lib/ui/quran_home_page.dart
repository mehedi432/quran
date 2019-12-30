import 'package:flutter/material.dart';

class QuranHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[377],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "কুরআন",
          textDirection: TextDirection.ltr,
          style: TextStyle(letterSpacing: 1.6, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/suras');
                    },
                    child: Container(
                      width: 144,
                      height: 144,
                      child: Center(
                        child: Text(
                          'সূরা',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              letterSpacing: 1.6),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      print("Card Tapped");
                    },
                    child: Container(
                      width: 144,
                      height: 144,
                      child: Center(
                        child: Text(
                          'আযিযা',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              letterSpacing: 1.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: InkWell(
                    onTap: () {
                      print("Card Tapped");
                    },
                    child: Container(
                      width: 144,
                      height: 144,
                      child: Center(
                        child: Text(
                          'অডিও',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              letterSpacing: 1.6),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      print("Card Tapped");
                    },
                    child: Container(
                      width: 144,
                      height: 144,
                      child: Center(
                        child: Text(
                          'সর্বশেষ পঠিত',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              letterSpacing: 1.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BasicCard(
                  xAxis: 377,
                  yAxis: 233,
                ),
              ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Help',
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.thumb_up),
        onPressed: () {
          print('Thums up is pressed!');
        },
      ),
    );
  }
}

class BasicCard extends StatelessWidget {
  BasicCard({this.xAxis, this.yAxis});
  final double xAxis, yAxis;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/suras');
        },
        child: Container(
          width: this.xAxis,
          height: this.yAxis,
          child: Center(
            child: Text(
              'নোট রাখুন',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                  letterSpacing: 1.6),
            ),
          ),
        ),
      ),
    );
  }
}
