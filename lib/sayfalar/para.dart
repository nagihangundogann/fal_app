import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class para extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('PARA FALI'),
        ),
        body: paraa());
  }
}

class paraa extends StatefulWidget {
  @override
  paraaState createState() => paraaState();
}

class paraaState extends State<paraa> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('para').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['para'];
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