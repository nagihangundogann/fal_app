import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class genel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('GENEL FALI'),
        ),
        body: genell());
  }
}

class genell extends StatefulWidget {
  @override
  genellState createState() => genellState();
}

class genellState extends State<genell> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('genel').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['genel'];
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