import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class saglik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('SAĞLIK FALI'),
        ),
        body: saglikk());
  }
}

class saglikk extends StatefulWidget {
  @override
  saglikkState createState() => saglikkState();
}

class saglikkState extends State<saglikk> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('sağlık').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['sağlık'];
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