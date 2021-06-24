import 'package:fal_app/girisekran/auth_type_selector.dart';
import 'package:fal_app/json/albums_view.dart';
import 'package:fal_app/sayfalar/genel.dart';
import 'package:fal_app/sayfalar/grafik.dart';
import 'package:flutter/material.dart';

import 'hakkinda.dart';

class hosgeldin extends StatefulWidget {
  const hosgeldin({Key key}) : super(key: key);

  @override
  _hosgeldinState createState() => _hosgeldinState();
}

class _hosgeldinState extends State<hosgeldin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      appBar: AppBar(
        title: Text(
          "SEÇENEKLER",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          RaisedButton(
            child: Text("ÖZEL FAL"),
            color: Colors.amberAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlbumsView()),
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("GENEL FAL "),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => genel()),
                  );
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("FAL GRAFIK"),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BarChartSample1()),
                      );
                    },
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("HAKKINDA"),
                          color: Colors.deepOrange,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hknda()),
                            );
                          },
                        ),
                      ])
                ],
              ),
            ],
          ),
        ]
        ),
      ),
    );


  }
}
