import 'package:flutter/material.dart';


class hknda extends StatefulWidget {
  const hknda({Key key}) : super(key: key);
  @override
  _hkndaState createState() => _hkndaState();
}

class _hkndaState extends State<hknda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("HAKKINDA"),
        ),
        body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006004 numaralı Nagihan Gündoğan tarafından 25 Haziran 2021 günü yapılmıştır."),
            ]
        )
    );
  }
}
