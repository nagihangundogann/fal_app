import 'package:fal_app/json/albums_models.dart';
import 'package:fal_app/json/albums_services.dart';
import 'package:fal_app/sayfalar/aile.dart';
import 'package:fal_app/sayfalar/arkadaslik.dart';
import 'package:fal_app/sayfalar/ask.dart';
import 'package:fal_app/sayfalar/egitim.dart';
import 'package:fal_app/sayfalar/kariyer.dart';
import 'package:fal_app/sayfalar/para.dart';
import 'package:fal_app/sayfalar/saglik.dart';
import 'package:flutter/material.dart';


class AlbumsView extends StatefulWidget {
  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}
class _AlbumsViewState extends State<AlbumsView> {
  Future<List<Konu>> futureData;
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KONULAR '),
      ),
      body: Center(
        child: FutureBuilder<List<Konu>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Konu> data = snapshot.data;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index)
                {
                  return ListTile(
                        title: Text("  FAL KONUSU : " + data[index].title.toString()),
                        onTap: (){
                          if(data[index].title=="AŞK")
                            {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ask()));
                            }
                          if(data[index].title=="AİLE")
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => aile()));
                          }
                          if(data[index].title=="KARİYER")
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => kariyer()));
                          }
                          if(data[index].title=="PARA")
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => para()));
                          }
                          if(data[index].title=="EĞİTİM")
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => egitim()));
                          }
                          if(data[index].title=="SAĞLIK")
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => saglik()));
                          }
                          if(data[index].title=="ARKADAŞLIK")
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => arkadaslik()));
                          }
                        },
                      );
                },
                separatorBuilder: (BuildContext context, int index)
                =>
                const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
// By default show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}