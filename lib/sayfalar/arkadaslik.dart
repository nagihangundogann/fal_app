import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class arkadaslik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('ARKADAŞLIK FALI'),
        ),
        body: arkadaslikk());
  }
}

class arkadaslikk extends StatefulWidget {
  @override
  arkadaslikkState createState() => arkadaslikkState();
}

class arkadaslikkState extends State<arkadaslikk> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('arkadaş').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['arkadaş'];
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          FloatingActionButton
            (child: Icon(Icons.add),
              onPressed: ()
              {
                yazigetir();
              }

          ),

          Column(
            children: [
              Text(gelenyazi.toString(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )],
          )
        ],
      ),
    );
  }
}