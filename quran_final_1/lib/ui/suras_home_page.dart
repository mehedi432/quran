import 'package:flutter/material.dart';
import 'dart:convert';

class SurasHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SurasHomePageState();
  }
}

class _SurasHomePageState extends State<SurasHomePage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('সূরা'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString('assets/sura.json'),
            builder: (context, snapshot) {
              // Decode Json data from local storage
              var myData = jsonDecode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Card(
                      child: Padding(
                        padding: EdgeInsets.all(21),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "${myData[index]['sura_no']} :  সূরা ${myData[index]['sura_name']}",
                              style: TextStyle(
                                  fontSize: 21,
                                  letterSpacing: 1.6,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "আয়াত সংখ্যা ${myData[index]['total_ayat']}, পাড়া - ${myData[index]['para']},",
                              style: TextStyle(
                                fontSize: 13,
                                letterSpacing: 1.6,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/sura_details');
                    },
                  );
                },
                itemCount: myData == null ? 0 : myData.length,
              );
            },
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/settings');
        },
        tooltip: 'Increment',
        child: Icon(Icons.settings),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
