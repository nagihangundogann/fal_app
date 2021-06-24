import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class aile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('AILE FALI'),
        ),
        body: ailee());
  }
}

class ailee extends StatefulWidget {
  @override
  aileeState createState() => aileeState();
}

class aileeState extends State<ailee> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('aile').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['aile'];
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