import 'package:flutter/material.dart';
import 'dart:convert';


class SuraDetailsPage extends StatefulWidget {
  SuraDetailsPage({Key key, this.name, this.suraNum}) : super(key: key);
  final String name;
  final String suraNum;

  @override
  State<StatefulWidget> createState() {
    return _SuraDetailsPageState();
  }
}

class _SuraDetailsPageState extends State<SuraDetailsPage> {
  Widget _suraIndividual() {
    return Container(
      child: Center(
        child: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('assets/ayats_bn.json'),
          builder: (context, snapshot) {
            // Decode Json data from local storage
            var suras = jsonDecode(snapshot.data.toString());

            for (var i = 0; i < suras.length; i++) {
              if (suras[i]['sura'] == widget.suraNum) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Card(
                        child: Padding(
                          padding: EdgeInsets.all(13),
                          child: Column(
                            children: [
                              Text(
                                "${suras[index]['text']}",
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: suras == null ? 0 : suras.length,
                );
              }
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("সূরা ${widget.name}"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: _suraIndividual());
  }
}
